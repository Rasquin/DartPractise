/*
INHERITANCE

Mechanism in which one object acquires properties of its parent class object

Super Class of any class is an Object and provides default implementation of:
->toString(),  returns the String representation of the Object.
-> hashCode Getter, returns the Hash Code of an Object.
-> operator == , to compare two Objects

Single inheritance: Class B inherits from class A
Multi-level Inheritance: Class C inherits from Class B, and class B inherits from class A
Hierarchy Inheritance: Class B and C inherits from Class A.

Class A is in all the example class parent.
Class B and C are in all cases Subclasess of A

Advantages:
- Code Reusability.
- Method Overriding.
- Cleaner code: no repetition.

*/

void main() {
  var dog = Dog();
  dog.breed = "Cooker Spaniel";
  dog.color = "Dark Honey";
  dog.bark();
  dog.eat();

  var cat = Cat();
  cat.color = "White";
  cat.age = 1;
  cat.eat();
  cat.meow();

  var animal = Animal();
  animal.color = "Brown";
  animal.eat();
}

class Animal {
  String color;

  void eat() {
    print("Eat!");
  }
}

class Dog extends Animal {
  String breed;

  void bark() {
    print("Bark!");
  }
}

class Cat extends Animal {
  int age;

  void meow() {
    print("Meow!");
  }
}
