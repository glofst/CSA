package com.example.AnimalShop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
public class AnimalController {

    @Autowired
    AnimalRepository animalRepository;

    static Set<Animal> animals = new HashSet<>();
    static int idCount = 1;

    @GetMapping("/animals")
    public List<Animal> getAnimals() {
        return animalRepository.findAll();
    }

    @PostMapping("/animals")
    public Animal addAnimal(@RequestBody Animal animal) {
        animalRepository.save(animal);
        return animal;
    }
/*
    @GetMapping("/animals/byID/{id}")
    public Animal getAnimal(@PathVariable("id") int id) {
        return animalRepository.findById(id).get();
    }
*/
    @DeleteMapping("/animals/{id}")
    public void removeAnimal(@PathVariable("id") int id) {
        animalRepository.findById(id).get();
    }

/*
    @GetMapping("/animals")
    public Set<Animal> getAnimals() {
        return animals;
    }

    @PostMapping("/animals")
    public Animal addAnimal(@RequestBody Animal animal) {
        animal.id = idCount++;
        animals.add(animal);
        return animal;
    }

    @GetMapping("/animals/byID/{id}")
    public Animal getAnimal(@PathVariable("id") int id) {
        return animals.stream().filter(a -> a.id == id).findFirst().orElse(null);
    }

    @GetMapping("/animals/byType/{type}")
    public Set<Animal> getAnimalByType(@PathVariable("type") String type) {
        return animals.stream().filter(a -> a.type.equals(type)).collect(Collectors.toSet());
    }

    @DeleteMapping("/animals/{id}")
    public void removeAnimal(@PathVariable("id") int id) {
        animals.removeIf(a -> a.id == id);
    }
*/
}
