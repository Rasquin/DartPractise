/*
 CONTINUE keywork
 */

void main() {
  // CONTINUE keyword
  // Using Labels

  mySimpleLoop:
  for (int i = 1; i <= 10; i++) {
    // In case the loop is i <=10, if we want to scape the value of 5, we apply continue
    /*if (i == 5) {
      continue;
    }*/

    // If you want to ommit the even numbers:
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }

  myNestedLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        //continue; //Lets scape the value 2 2
        continue myNestedLoop; // lets scape 2 2 and 2 3
      }

      print("$i $j");
    }
  }
}
