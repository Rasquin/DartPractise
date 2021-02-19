/*
INTERFACE --> implements

Dart has not especail syntax to declare interface, but you can use classes as interface
With interface ('implements'), you can implements two classes, with inheritance (extends) you can only inherid one class at the time
Use interface when you need concrete implementation of all of its functions within it's sub class
- It is mandatory to override all the methods in the implementing class

*/

import 'dart:async';
import 'dart:ffi';

void main() {
  var tv = Television();
  tv.volumenUp();
  tv.volumenDown();
}

class Remote {
  // Lets use the class remote as interface in class television

  void volumenUp() {
    print("Volumen Up from Remote +++");
  }

  void volumenDown() {
    print("Volumen Down from Remote ---");
  }
}

class AnotherClass {
  // code
  void justAnotherMethod() {
    //code
  }
}

//Here Remote acts as interface
class Television implements Remote, AnotherClass {
  void volumenUp() {
    //super.volumenUp(); implements as interface make all method of super class abstracts
    print("Volumen Up from Television +++");
  }

  void volumenDown() {
    print("Volumen Down from Television ---");
  }

  void justAnotherMethod() {
    print("Just a nother method from another class");
  }
}
