/*
IF and ELSE statements
if (condition) {execute} else {execute}

IF ELSE IF ladder
if (condition) {execute} else if {execute} else { if nothing else worked out, execute}

*/

void main() {
  // IF and ELSE Statements
  var salary = 15000;
  if (salary > 20000) {
    print("You got promotion. Congratulations!");
  } else {
    print("You need to work harder :(");
  }

  // IF ELSE IF Ladder Statements
  var marks = -200;
  if (marks >= 90 && marks < 100) {
    print("A+ grade");
  } else if (marks >= 80 && marks < 90) {
    print("A grade");
  } else if (marks >= 70 && marks < 80) {
    print("B grade");
  } else if (marks >= 60 && marks < 70) {
    print("C grade");
  } else if (marks >= 30 && marks < 60) {
    print("D grade");
  } else if (marks >= 0 && marks < 30) {
    print("E grade, you have failed");
  } else {
    print("Invalid marks. Please write a valid marks");
  }
}
