/*
 DO WHILE LOOP

1. Initialize the counter
2. do {execute; increment or decrement counter;} while (condition);

 */

void main() {
  // DO WHILE Loop
  // Find the even numbers between 1 and 10

  int i = 1; // Initialize counter

  do {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  } while (i <= 10);
}
