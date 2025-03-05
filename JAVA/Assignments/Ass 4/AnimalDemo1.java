// Animal class
class Animal {
    // Method to be overridden
    public void move() {
        System.out.println("Animal is moving...");
    }
}

// Cheetah class inheriting Animal
class Cheetah extends Animal {
    // Overriding the move method
    @Override
    public void move() {
        System.out.println("Cheetah is running fast!");
    }
}

// Main class to test the program
public class AnimalDemo1 {
    public static void main(String[] args) {
        Animal genericAnimal = new Animal();
        genericAnimal.move(); // Calls move() from Animal

        System.out.println();

        Cheetah cheetah = new Cheetah();
        cheetah.move(); // Calls overridden move() from Cheetah
    }
}
