/*
CLOSURES

- Special Function
- Within a closure ypu can mutate (modify) the values of variables present in the parent scope
- In java 8, you are not allowed to modify paren scope variables

*/

void main() {
  // Definition I:
  // A closure is a function taht has access to the parent scope, even after the scope has closed
  String message = "Dart is good";
  Function showMessage = () {
    // Closure function
    message =
        "I am your closure function that changed your message to whatever I want! BuaHaHaHa";
    print(message);
  };
  showMessage();

  // Definition II:
  // A closure is a function object that has access to variables in its lexical scope,
  // even when the function is used outside of its original scope
  Function talk = () {
    String msg = "Hi";
    Function say = () {
      msg = "Hello";
      print(msg);
    };
    return say;
  };
  Function speak = talk();
  speak(); //talk() //say() //print(msg) //"Hello"
}
