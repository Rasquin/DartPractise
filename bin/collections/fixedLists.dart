/*
FIXED LIST

- An ARRAY is known as LIST
- Ordered Collection --> Elements are ordered in sequence
- Length of the list once defined cannot be changed

*/

void main() {
  // Elements: Null    Null    Null     Null     Null
  // Index:     0       1        2        3        4

  List<int> numbersList = List(5); //Fixed length list to 5
  numbersList[0] = 73;
  numbersList[1] = 23;
  numbersList[4] = 45;

  // Elements:    73    23    Null     Null     45
  // Index:       0      1     2        3        4

  numbersList[1] = 25; //Update value
  numbersList[0] = null; // Delete value

  print("Printing one value");
  print(numbersList[0]); // print one value
  print("\n");

  // Some method with lists ---> Not supported by fixed lists
  // It will look for the value '10'in the list and remove it
  //numbersList.remove(10);
  // numbersList.add(100);

  // print all values --> Using individual Elements (objects)
  print("Printing all values using each element (objects)");
  for (int element in numbersList) {
    print(element);
  }
  print("\n");

  // print all values -->  lambda version
  print("Printing all values using lambda");
  numbersList.forEach((element) => print(element));
  print("\n");

  //print all values --> Index version
  print("Printing all values using Index");
  for (int i = 0; i < numbersList.length; i++) {
    print(numbersList[i]);
  }
}
