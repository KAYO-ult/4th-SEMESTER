// Animal interface
interface Animal {
    void bark(); // Method declaration
}

// Dog class implementing Animal interface
class Dog implements Animal {
    // Overriding the bark method
    public void bark() {
        System.out.println("Dog is barking");
    }
}

// Main class to test the implementation
public class AnimalDemo {
    public static void main(String[] args) {
        Dog dog = new Dog(); // Creating Dog object
        dog.bark(); // Calling the overridden method
    }
}
