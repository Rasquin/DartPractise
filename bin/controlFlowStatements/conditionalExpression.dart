/*
Conditional Expression
*/

void main() {
  //Conditional Expressions

  // 1. condition ? expr1 : expr2
  // If condition is true, evaluates expr1 (and returns its value);
  // Otherwise, evaluates and returns the value of expr2.

  int a = 2;
  int b = 3;

  if (a < b) {
    print("$a is smaller than $b");
  } else {
    print("$b is smaller than $a");
  }

  a < b ? print("$a is smaller than $b") : print("$b is smaller than $a");

  // another way to say the same
  int smallNumber;
  if (a < b) {
    smallNumber = a;
  } else {
    smallNumber = b;
  }
  print("$smallNumber is smaller");

  smallNumber = a < b ? a : b;
  print("$smallNumber is smaller");

  int smallNumber1 = a < b ? a : b; // All in one line
  print("$smallNumber1 is smaller");

  // 2. expr1 ?? expr2
  // If expr1 is non-null, returns its value;
  // otherwise evaluates and returns the value of expr2.

  //String name = "Lizzy";
  String name = null;

  String nameToPrint = name ?? "Guest User";
  print(nameToPrint);
}
