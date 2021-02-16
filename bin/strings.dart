// Dart Strings, Literals and String Interpolation

void main() {
  //Literals
  var isSnowing = true;
  int x = 2;
  "Ciel";

  //Various ways to define String literals in Darts.
  // You can use '' or ""
  String s1 = 'Single Cuoted';
  String s2 = "Double Couted";
  // You can use "''" or \'
  String s3 = "It's easy";
  String s4 = 'It\'s easy/';
  String s5 = "If you have a very long string you can add the '+' symbol" +
      " and continue adding to your string in the next line"
          "or just add your string and it still works";

  // String interpolation
  String name = "Ciel";
  String message0 = "My name is " + name; // Bad practise
  String message = "My name is $name"; // Interpolation --> Good practise
  print(message);
  print("My name is $name"); // also works
  // For the interpolation to take the whole elements use {}, it automatically
  //converts the lenght from int to string
  print("The number of characters in String $name is ${name.length}");

  int l = 20;
  int b = 10;
  print("The sum of $l and $b is ${l + b}");
  print("The area of a rectangle with lenght $l and  breadth $b is ${l * b}");
}
