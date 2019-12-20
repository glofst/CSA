#include "database.h"

DataBase::DataBase() {}

DataBase::~DataBase() {}

void DataBase::init(const char* hostname, const char* db_name, const char* gate, const char* pass) {
	HOSTNAME = hostname;
	DATABASE = db_name;
   	USERNAME = gate;
   	PASSWORD = pass;
   	SOCKET = NULL;

	dbc = new SimpleSQL::Connector();
	if(!dbc->connect(HOSTNAME, USERNAME, PASSWORD, DATABASE, PORT_NO)) {
		char ex[] = "ERROR with connecting database";
		throw std::runtime_error(std::strcat(ex, db_name));
	}
	dbc->connect(HOSTNAME, USERNAME, PASSWORD, DATABASE, PORT_NO);
}

std::vector<Animal> DataBase::get_animals() {
	if(dbc->is_connected()) {
		std::vector<Animal> animals;
		std::string request = "SELECT * FROM animals;";
		auto query_res_ptr = dbc->query(request);
		auto row = query_res_ptr->get_row();
		while(row != nullptr) {
			Animal tmp = {
				std::stoi(std::string(row[0])),
				std::string(row[1]),
				std::string(row[2]),
				std::stoi(std::string(row[3])),
				std::stoi(std::string(row[4]))
			};

			animals.push_back(tmp);
			row = query_res_ptr->get_row();
		}
		return animals;
	}
	else
		throw std::runtime_error("Database doesn't connected");
}


std::vector<Animal> DataBase::get_animal_by_id(std::string id) {
	if(dbc->is_connected()) {
		std::vector<Animal> animals;
		std::string request = "SELECT * FROM animals WHERE id=" + id + ";";
		auto query_res_ptr = dbc->query(request);
		auto row = query_res_ptr->get_row();
		while(row != nullptr) {
			Animal tmp = {
				std::stoi(std::string(row[0])),
				std::string(row[1]),
				std::string(row[2]),
				std::stoi(std::string(row[3])),
				std::stoi(std::string(row[4]))
			};

			animals.push_back(tmp);
			row = query_res_ptr->get_row();
		}
		return animals;
	}
	else
		throw std::runtime_error("Database doesn't connected");
}

std::vector<Animal> DataBase::get_animals_by_type(std::string type) {
	if(dbc->is_connected()) {
		std::vector<Animal> animals;
		std::string request = "SELECT * FROM animals WHERE type='" + type + "';";
		auto query_res_ptr = dbc->query(request);
		auto row = query_res_ptr->get_row();
		while(row != nullptr) {
			Animal tmp = {
				std::stoi(std::string(row[0])),
				std::string(row[1]),
				std::string(row[2]),
				std::stoi(std::string(row[3])),
				std::stoi(std::string(row[4]))
			};

			animals.push_back(tmp);
			row = query_res_ptr->get_row();
		}
		return animals;
	}
	else
		throw std::runtime_error("Database doesn't connected");
}


void DataBase::change_info(std::string id, std::vector<std::pair<std::string, std::string>> changes) {
	if(dbc->is_connected()) {
		std::string request = "UPDATE animals SET";
		std::string segm = "";
		for(auto& it : changes) {
			request += segm + " " + it.first + "='" + it.second + "'";
			segm = ",";
		}
		request += " WHERE id=" + id + ";";
		dbc->query(request);
	}
	else
		throw std::runtime_error("Database doesn't connected");
}

void DataBase::add_animal(std::string name, std::string type, std::string age, std::string price) {
	if(dbc->is_connected()) {
		std::string request = "INSERT INTO animals(name, type, age, price) VALUES ('" + name + "', '" + type + "', '" + age + "', '" + price + "');";
		dbc->query(request);
	}
	else
		throw std::runtime_error("Database doesn't connected");
}

void DataBase::delete_by_id(std::string id) {
	if(dbc->is_connected()) {
		std::string request = "DELETE FROM animals WHERE id='" + id + "';";
		dbc->query(request);
	}
	else {
		throw std::runtime_error("Database doesn't connected");
	}
}
