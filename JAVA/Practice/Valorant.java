import java.util.Scanner;

class Person {

    String gender = "male";
    int age = 20;
    
    Person (String gender, int age) {
        this.gender = gender;
        this.age = age;
    }

    void display() {
        System.out.println("Person is" + gender + " and is " + age + " years old.");
    }
}

class Gold extends Person {

    String name = "Aneek";
    String rank = "Gold";

    public Gold(String gender, int age, String name) {
        super(gender, age);
        this.name = name;
        this.rank = rank;
    }

    void display () {
        System.out.println("Person is " + gender + " and is " + age + " years old.");
        System.out.println("Person is " + name + " and is a " + rank + " Rank.");
    }
}

class Valorant {
    public static void main(String[] args) {
        Scanner SC = new Scanner(System.in);
        
        

        Gold gg = new Gold("Male", 20, "Aneek");
        gg.display();
    }
}