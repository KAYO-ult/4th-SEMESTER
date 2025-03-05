// Superclass
class Animal {
    void sound() {
        System.out.println("Animal makes a sound");
    }
}

// Subclass 1
class Dog extends Animal {
    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

// Subclass 2
class Cat extends Animal {
    @Override
    void sound() {
        System.out.println("Cat meows");
    }
}

// Main class demonstrating Dynamic Method Dispatch
public class DynamicDispatchDemo {
    public static void main(String[] args) {
        Animal myAnimal; // Superclass reference

        // Assigning Dog object to Animal reference
        myAnimal = new Dog();
        myAnimal.sound(); // Calls Dog's overridden method

        // Assigning Cat object to Animal reference
        myAnimal = new Cat();
        myAnimal.sound(); // Calls Cat's overridden method
    }
}
