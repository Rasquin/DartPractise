/*
 FOR LOOP

 for (initializer; condition; increment/decrement) {execute}
 */

void main() {
  // FOR Loop
  // Loop that print numbers from 1 to 10

  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  // Loop that printeven  numbers between 1 to 10
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // For ..in Loop
  List planetList = [
    "Mercury",
    "Venus",
    "Earth",
    "Mars",
    "Jupiter",
    "Saturn",
    "Uranus"
  ];

  for (String planet in planetList) {
    print(planet);
  }
}
