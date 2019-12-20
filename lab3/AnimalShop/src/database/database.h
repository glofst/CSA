#pragma once

#include <iostream>
#include <vector>
#include <string>
#include "SimpleSQL.h"
#include <ctime>
#include <cstring>
#include <chrono>
#include <typeinfo>
#include <exception>


struct Animal {
	int id;
	std::string name;
	std::string type;
	int age;
	int price;
};


class DataBase {

private:

	const char* HOSTNAME;
    const char* DATABASE;
    const char* USERNAME;
    const char* PASSWORD;
    const char* SOCKET;
	bool connected;
    enum {
        PORT_NO = 3306,
        OPT = 0
    };

	SimpleSQL::Connector* dbc;


public:
	DataBase();
	~DataBase();
	void init(const char*, const char*, const char*, const char*);
	std::vector<Animal> get_animals();
	std::vector<Animal> get_animal_by_id(std::string);
	std::vector<Animal> get_animals_by_type(std::string);
	void add_animal(std::string, std::string, std::string, std::string);
	void change_info(std::string, std::vector<std::pair<std::string, std::string>>);
	void delete_by_id(std::string);
};
