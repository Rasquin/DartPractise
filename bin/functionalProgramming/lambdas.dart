/*
LAMBDA

Is is a function withou a name --> Anonymos functio
It is also an object

Function varName = (int a, int b) { -->parameters
  mothod body;
}

Function varName = (int a, int b) => a+ b;

dont forget to call your lambda
*/

void main() {
  // Lambda expression --> because it is an object, you can asign its value to a var
  Function addTwoNumbers = (int a, int b) {
    var sum = a + b;
    print(sum);
  };

  // Here lambda return a value
  var multiplyByFour = (int number) {
    return number * 4;
  };

  // Lambda in short expression
  Function addNumbers = (int a, int b) => print(a + b);
  var multiplyFour = (int number) => number * 4;

  // Calling lambda function
  addTwoNumbers(2, 5);
  print(multiplyByFour(5));
  addMyNumbers(3, 7);
  print(multiplyFour(4));
}

// Normal Function
void addMyNumbers(int a, int b) {
  var sum = a + b;
  print(sum);
}
