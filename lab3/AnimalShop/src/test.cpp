#include <iostream>
#include <json.hpp>
#include <vector>

using namespace std;
using json = nlohmann::json;

int main() {
	string s = "sdfasdf";
	to_string(s);
}

/*
struct Sample {
	string name;
	int age;

	friend ostream& operator<<(ostream& out, Sample const& sample) {
		out << sample.name << ": " << sample.age;
		return out;
	}
};

int main() {
	json j;
	vector<Sample> v1 = {{"John", 10}, {"Mike", 12}};
	Sample sample = {"John", 10};
	stringstream ss;
	ss << "[" << endl << sample.name << "," << endl << sample.age << "\n]";
	vector<int> vs;
	j.push_back(vs);
	string s = j.dump();
	cout << s << endl;
}
*/
