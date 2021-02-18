/*
Class Object

Class --> Blueorint to create objects. 
Funtions --> You can have as many as you want inside the classes
Constructor --> Used to create Objects. Inside a Class --> constructorName(){ code }
Default Constructor --> var referenceVariable = className(); // indide a class className(){}
Named Constructor --> inside a class className.NamedConstructor(){}


*/

void main() {
  // Student 1
  // studen2, student2, stundent(n+1) are reference variables

  /*
  Because we eliminated our default constructor, now we can enter the properties when defining the object
  var student1 = new Student(); //The new is optional
  student1.id = 1;
  student1.name = "Acemita";
  */
  var student1 = new Student(1, "Acemita");
  print("${student1.id} and ${student1.name}");

  student1.study();
  student1.sleep();

  // Student 2
  var student2 = Student(2, "Misus");
  print("${student2.id} and ${student2.name}");

  student2.study();
  student2.sleep();

  // Student 3
  var student3 = Student.myCustomConstructor();
  student3.id = 3;
  student3.name = "Galan";
  print("${student3.id} and ${student3.name}");

  // Student 4
  var student4 = Student.myAnotherNamedConstructor(4, "Luna");
  print("${student4.id} and ${student4.name}");
}

class Student {
  int id; //Instance or Field Variable, default value is null
  String name = "Semmy"; //Instance or Field Variable, default value is Semmy

  //Default constructor
  /*
  You only can have one: or default constructor or parameterized contructor
  Student() {
    print("This is my default constructor");
  }
  

  //parametrice constructor
  Student(int id, String name) {
    this.id = id;
    this.name = name;
  }
  */

  //parametericed constructor, simpler way
  Student(this.id, this.name);

  // Named consttructor
  Student.myCustomConstructor() {
    //If you have no code, you take away the {} and just put a ';'
    print("This is my custom constructor");
  }

  // Another Named constructor
  Student.myAnotherNamedConstructor(this.id, this.name);
  //Now you have to eneter id and name when defining your new class object

  void study() {
    print("${this.name} is now studing");
    int marks; // Local variable
  }

  void sleep() {
    print("${this.name} is now sleeping");
  }
}
