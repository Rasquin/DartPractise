/*
STATIC METHODS AND VARIABLES

Static Variables also known as Class Variables
Static Methods also known as Class Methods
Static Variables are lazily initialized 
-They are not initialized until they are used in the program
-They consume memory only when used
Static Methods have nothing to do with class Object or Instance
-You cannot use 'this' keyword whitin a Static Method
From Static Methods:
-You can only access Static Methods and Static Variables
-You cannot access Normal Instance Variables and/or Methods of the class
*/

void main() {
  var circle1 = Circle();
  //circle.pi; // --> compiler cannot access the static variable
  //circle.calculateArea(); --> also not allowed
  circle1.noStaticPi; // will consume 4 bytes

  var circle2 = Circle();
  circle2
      .noStaticPi; // Will consume again 4 bytes, you are consuming too much memory

  print(Circle.pi); //acceding to an static variable. 4 bytes
  Circle
      .pi; // No more memory will be allocated because it is declared only once
  Circle.calculateArea();
}

class Circle {
  //static variable, same for everything
  // const variable, becuase it cannot be changed, its value will be always the same
  static const double pi = 3.14;
  static int maxRadius = 5;

  String color;

  //No static variable, if it is the same for everything, why to declare eache time you create an object? it will consume too much memory
  double noStaticPi = 3.14;

  //static method
  static void calculateArea() {
    print("Some code to calculate area");
    //myNormalFunction(); ---> Not allowed to call instance functions
    //this.color; ---> You cannot use 'this' keyword ans even cannot access Instance Variables from a static method
  }

  //No static method
  void noStaticCalculateArea() {
    print("Some code to calculate area");
  }

  void myNormalFunction() {
    // normal functions/methods can access any static functions/methods
    Circle.calculateArea();

    //Normal functions/methods can access any instance variable
    this.color = "Red";

    //Normal functions/methods can access any static const instance variable
    //Circle.pi; also works
    pi;

    //Normal functions/methods can access any static instance variable
    //Circle.maxRadius; also works
    maxRadius;
  }
}
