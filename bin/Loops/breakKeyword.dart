/*
 BREAK keywork
 */

void main() {
  // BREAK keyword
  // Using Labels

  myOuterLoop:
  for (int i = 1; i <= 3; i++) {
    // In case the loop is i <=10, if we dont want the values greater than 6, we apply this break
    /*if (i == 6) {
      break;
    }*/

    for (int j = 1; j <= 3; j++) {
      print("$i $j");

      if (i == 2 && j == 2) {
        //break; // Here the break only works for the inner for loop
        break myOuterLoop; // Here break the whole loop
      }
    }
  }
}
