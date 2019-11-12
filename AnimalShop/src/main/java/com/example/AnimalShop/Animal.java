package com.example.AnimalShop;

public class Animal {
    String type;
    String name;
    int age;
    String size;
    int id;
    int cost;

    public Animal(String type, String name, int age, String size, int cost) {
        this.type = type;
        this.name = name;
        this.age = age;
        this.size = size;
        this.cost = cost;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getSize() {
        return size;
    }

    public int getId() {
        return id;
    }

    public int getCost() {
        return cost;
    }
}
