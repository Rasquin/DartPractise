/*
 ITERATORS SYNTAX
 Always get a counter variable
 check the condition
 increment or decrement the counter according to case
*/

void main() {
  // Print Hello 4 times:

  // for loop --> definite: You know how many times you need to do the loop
  for (var i = 0; i < 4; i++) {
    print("Hello ${i + 1}");
  }
  // while loop --> indefinite: You dont know how many time you need to run your loop
  int i = 0;
  while (i < 4) {
    print("Hello with while ${i + 1}");
    i++;
  }
  // Do While loop --> indefinite. You check the condition at the end of the loop.
  int j = 0;
  do {
    print("Hello with do while ${j + 1}");
    j++;
  } while (j < 4);
}
