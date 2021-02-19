/*
METHOD OVERRIDING

It is a mechanism by which the child class redefines a method or property in its parent class.
*/

void main() {
  var dog = Dog();
  dog.eat();

  print(dog.color);
}

class Animal {
  String color = "Brown"; // All animals are brown by default

  void eat() {
    print("The  Animal is eating!");
  }
}

class Dog extends Animal {
  String breed;

  // Lets override a property
  String color = "Black"; //Now all dogs are black by default

  void bark() {
    print("Bark!");
  }

  //Lets override our eat(), the method name to override should be the same in both classes
  void eat() {
    // Here we call our original function
    super.eat();
    // Here we override
    print("The Dog is eating");
    // Our original function can be anywhere
    //super.eat();
  }
}
