/*
INHERITANCE WITH CONSTRUCTOR

*/

// 1. Inheritance with Default Constructor & Parameterized constructor
// 2. Inheritance with Named Constructor

void main() {
  var dog1 = Dog("Husky", "Black");
  print(" ");
  var dog2 = Dog("Boxer", "Striped");
  print(" ");
  var dog3 = Dog.myNamedConstructor("German shepper", "Black and Brown");
}

class Animal {
  String color;

  // Default class constructor
  // Our animal constructor needs color parameter
  Animal(String color) {
    this.color = color;
    print("Animal Class Constructor");
  }

  Animal.myAnimalNamedConstructor(String color) {
    print("This is my Animal Class Named Constructor");
  }
}

class Dog extends Animal {
  String breed;

  // Default class constructor
  // Now our dog constructor needs breed and color parameter
  // the : super (property) will call the parent class constructor
  Dog(String breed, String color) : super(color) {
    this.breed = breed;
    print("Dog Class Constructor");
  }

  // Named Class Constructor
  // Beacause is a subclass of Animal, it should have the color parameter
  // : super.myParentNamedConstructor (property) will call the parent class named constructor
  Dog.myNamedConstructor(String breed, String color)
      : super.myAnimalNamedConstructor(color) {
    this.breed = breed;
    print("This is my Dog  Named Class Constructor");
  }
}
