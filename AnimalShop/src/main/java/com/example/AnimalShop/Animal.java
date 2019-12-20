package com.example.AnimalShop;

import javax.persistence.*;

@Entity
@Table(name = "animals")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id;

    @Column(length = 32)
    String type;

    @Column(length = 32)
    String name;

    @Column
    int age;

    @Column(length = 32)
    String size;

    @Column
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
