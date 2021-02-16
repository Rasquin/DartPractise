/*
SWITCH CASE Statements

switch (variable) {case n: execute; break; cas n+1: execute; break; defualt: execute;}
*/

void main() {
  // Switch Case Statements: Applicable for only 'int' and 'String'.
  // bool, double not allowed in switch

  String grade = 'D';

  switch (grade) {
    case 'A':
      print("Excellent grade of A");
      break;

    case 'B':
      print("very Good!");
      break;

    case 'C':
      print("Good enough. But work hard");
      break;

    case 'D':
      print("No sure if you passed. Work harder");
      break;

    case 'F':
      print("you have failed");
      break;

    default:
      print("Invalid grade");
  }
}
