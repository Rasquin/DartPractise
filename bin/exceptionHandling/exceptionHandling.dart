/*
Execption Handling

Used whe normal flow of the program is disrupted and application crashes

*/

// Objectives
// 1. ON clase
// 2. CATCH  clause with Exception Object
// 3. CATCH  clause with Exception Object and Stack Object
// 4. Finally Clause
// 5. Create our own Custom Exception

void main() {
  // Case I: When you know the exection to be thrown, use ON clause
  print("Case I");
  try {
    int result =
        12 ~/ 0; // -->  the ~ indicates that the operator will reurn an int
    print("The result is $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by 0");
  }
  print("");

  // Case II: When you do not know the exection use CATCH Clause
  print("Case II");
  try {
    int result =
        12 ~/ 0; // -->  the ~ indicates that the operator will reurn an int
    print("The result is $result");
  } catch (e) {
    print("The exeception thrown is $e");
  }
  print("");

  // Case III: Use STACK TRACE to knoe the events ocurred before Exception was thrown
  print("Case III");
  try {
    int result =
        12 ~/ 0; // -->  the ~ indicates that the operator will reurn an int
    print("The result is $result");
  } catch (e, s) {
    // --> te s mean you are using the STACK TRACE
    print("The exeception thrown is $e");
    print("STACK TRACE \n $s");
  }
  print("");

  // Case IV: Whether there is an Exection or no, FINALLY is always executed.
  print("Case IV");
  try {
    int result = 12 ~/ 4;
    print("The result is $result");
  } catch (e) {
    print("The exeception thrown is $e");
  } finally {
    print(
        "This is the FINALE Clause and it will be always execute whether there is an exception or not");
  }

  print("");
  print("Case V");
  // Case V: Custom exception
  try {
    depositMoney(-200);
  } catch (e) {
    print(e.errorMessage());
  }
}

// Class created to deal with a custom exception

class DepositException implements Exception {
  String errorMessage() {
    return ("You cannot enter an amount less than 0");
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    // Here we throw the exception manually
    throw new DepositException();
  }
}
