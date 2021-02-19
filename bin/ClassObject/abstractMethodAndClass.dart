/*
ABSTRACT CLASS AND METHODS

Abstract class can not be used to create new objects
Abstract Method can only exist inside an Abstract Class
*/

// 1. Abstract Method
// 2. Abstract Class

void main() {
  //var shape = Shape(); --> Error. Cannot create a var from a abstract class
  var rectangle = Rectangle();
  rectangle.draw();

  var circle = Circle();
  circle.draw();
}

abstract class Shape {
  //Instance variable is needed
  int x;
  int y;

  void draw(); //--> abstract method. No use of {}

  void myNormalFunction() {
    //Somecode
  }
}

class Rectangle extends Shape {
  //when you extend an abstract class you have to overwrite its abstract method
  void draw() {
    // code...

    print("Drawing a rectangle ...");
  }
}

class Circle extends Shape {
  //when you extend an abstract class you have to overwrite its abstract method
  void draw() {
    // code...

    print("Drawing a circle ...");
  }
}
