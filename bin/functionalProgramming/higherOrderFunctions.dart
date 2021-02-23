/*
HIGHER ORDER FUNCTION
 
- A function that can accept another function as a parameter
- It can return a function
- Or it can do both things

*/

void main() {
  // Calling of Example one: Passing Function to Higher-Order Function
  Function addNumbers = (int a, int b) => print(a + b);
  someOtherFunction("Hello", addNumbers);

  // Calling Example two: Return a function
  var myFunc = taskToPerform();
  print(myFunc(10)); // multiplyFour(10) //number*4 //10*4 // output 40
}

// Example one: Accepts function as parameter
void someOtherFunction(String message, Function myFunction) {
  print(message);
  myFunction(2, 4); //addNumbers(2,4) //print(a+b) //print(2+4) //output 6
}

// Example two: Return a function
Function taskToPerform() {
  Function multiplyFour = (int number) => number * 4;
  return multiplyFour;
}
