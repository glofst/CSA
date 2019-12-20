#include "database.h"
#include "HTTPServer.h"
#include "HTTPHandler.h"
#include "Logger.h"
#include "nlohmann/json.hpp"

#include <unistd.h>
#include <sstream>
#include <unistd.h>
#include <signal.h>
#include <vector>
#include <future>
#include <thread>
#include <iostream>
#include <functional>


using namespace std;
using json = nlohmann::json;


bool finish = false;

void set_bad_request(HTTPHandler::Answer& answer) {
	answer.status_code = 403;
	answer.status_description = "Bad Request";
}

void set_ok(HTTPHandler::Answer& answer) {
	answer.status_code = 200;
	answer.status_description = "OK";
}

json animals_to_json(vector<Animal> animals) {
	json result;
	size_t i = 0;
	if(animals.empty()) {
		vector<string> tmp;
		result.push_back(tmp);
		return result;
	}
	for(auto& animal : animals) {
		vector<string> tmp;
		result.push_back(tmp);
		result[i].push_back(animal.id);
		result[i].push_back(animal.name);
		result[i].push_back(animal.type);
		result[i].push_back(animal.age);
		result[i].push_back(animal.price);
		++i;
	}
	return result;
}


HTTPHandler::Answer choose_way(DataBase& db, HTTPHandler::Request const& request) {
	HTTPHandler::Answer answer;
	json args_json;
	json answer_json;

	vector<pair<string,string>> changes;
	vector<Animal> animals;

	try {
		switch(request.method) {
			case HTTPHandler::Method::GET:
				if(request.uri == "/animals") {
					animals = db.get_animals();
				}
				else if(request.uri == "/animal_by_id") {
					animals = db.get_animal_by_id(request.variables.at("id"));
				}
				else if(request.uri == "/animals_by_type") {
					animals = db.get_animals_by_type(request.variables.at("type"));
				}
				else
					throw runtime_error("Unknown command");
				answer_json = animals_to_json(animals);
				answer.body = answer_json.dump(4);
				break;
			case HTTPHandler::Method::POST:
				args_json = json::parse(request.body);
				db.add_animal(args_json["name"].get<string>(), 
							  args_json["type"].get<string>(), 
							  to_string(args_json["age"].get<int>()),
							  to_string(args_json["price"].get<int>())
							 );
				break;
			case HTTPHandler::Method::PUT:
				args_json = json::parse(request.body);
				for(auto& it : args_json.items()) {
					changes.push_back({it.key(), it.value()});
				}
				db.change_info(request.variables.at("id"), changes);
				break;
			case HTTPHandler::Method::DELETE:
				db.delete_by_id(request.variables.at("id"));
				break;
			default:
				throw runtime_error("Unknown HTTP Method");
				break;
		}
		set_ok(answer);
		logger << "Work was ended without exceptions" << endl;
	} catch(exception& e) {
		logger << "[EXCEPTION on work] " << e.what() << endl;
		set_bad_request(answer);
	   	answer_json["error_message"] = e.what();
	}
	
	answer.headers.insert(pair<string, string>("Content-Type", "application/json"));
	answer.headers.insert(pair<string, string>("Content-Length", to_string(answer.body.size())));
	answer.headers.insert(pair<string, string>("Connecton", "close"));
	return answer;

}

string request_to_str(HTTPHandler::Request const& request) {
	stringstream result_ss;
	HTTPHandler::write_request(request, result_ss);
	return result_ss.str();
}

string answer_to_str(HTTPHandler::Answer const& answer) {
	stringstream result_ss;
	HTTPHandler::write_answer(answer, result_ss);
	return result_ss.str();
}


void signal_handler(int) {
	finish = true;
}

void handle_client(int client_sock, DataBase &db)
{
	HTTPHandler::Answer answer;

	try {
		HTTPHandler::Request request = HTTPServer::get_request(client_sock);
		logger << "Request:\n" << request_to_str(request) << endl;

		answer = choose_way(db, request);

		logger << "Answer:\n" << answer_to_str(answer) << endl;
		HTTPServer::send_answer(client_sock, answer);
		logger << "Answer was sent" << endl;

	} catch (HTTPServer::ClientDisconnected& ex) {
		logger << ex.what() << endl;
	}

	HTTPServer::close_con(client_sock);
	logger << "Connection closed with client id:" << client_sock << endl;
}



int main(int argc, char** argv) {

	// Daemon mode
	if (argc > 1 && strcmp(argv[1], "-d") == 0) {
		int fork_res = fork();
		if (fork_res == -1) {	// Error
			return -1;
		}
		if (fork_res > 0) {		// Parent
			return 0;
		}
		
		// Child 
		// Closing useless fds
		close(0);
		close(1);
		close(2);
	}


	try {

		// Capturing SIGINT signal
		signal(SIGINT, signal_handler);

		logger.open("log/log.txt");

		logger << "AnimalShop starting..." << endl;

		logger << "Initating database..." << endl;
		DataBase db;
		db.init(
				"mysql",
				"AnimalShopDB",
				"root",
				"root_password"
			   );
		logger << "Database initiated successfully" << endl;

		HTTPServer server;
		logger << "Starting server..." << endl;
		server.start_server(2200);
		server.turn_to_listen(10);


		vector<future<void>> futures;

		while(!server.is_interrupted()) {
			logger << "Awaiting for connection..." << endl;
			int client_sock = server.connect_client();
			logger << "Client with id: " << client_sock << " was connected" << endl;
			futures.push_back(async(handle_client, client_sock, std::ref(db)));
		}

    } catch (exception& e) {
        logger << "[EXCEPTION] " << e.what() << endl;
    }

	logger << "Shutting down..." << endl;
	return 0;
}
