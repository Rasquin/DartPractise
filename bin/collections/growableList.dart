/*
GROWABLE LIST

Length is dynamic
Just do not past an argument inside of the list constructor
*/

void main() {
  // Elements: ---> no elements --> empty
  // Index:  --> No index --> empty

  //List<String> countries = List(); --> if you dont know what elements will be in your list
  List<String> countries = ["England", "India", "China", "Panama"];
  countries.add("Colombia");
  countries.add("Australia");

  List<int> numbersList = List(); //Growable List
  numbersList.add(73); // Insert operation --> use add() method
  numbersList.add(23);
  numbersList.add(45);
  numbersList.add(51);

  // Elements:    73    23     45    51
  // Index:       0      1     2      3

  numbersList[1] = 25; //Update value
  numbersList[0] = null; // Delete value

  // Elements:    Null  25     45    51
  // Index:       0      1     2      3

  print("Printing one value");
  print(numbersList[0]); // print one value
  print("\n");

  // Some method with lists
  // It will look for the value '10'in the list and remove it, all other elements to the right will move one poition to the left
  numbersList.remove(null);
  // Elements:    25     45    51
  // Index:       0      1     2

  // add a new element
  numbersList.add(100);
  // Elements:    25     45    51   100
  // Index:       0      1     2     3

  // remove the element at the 3rd index
  numbersList.removeAt(3);
  // Elements:    25     45    51
  // Index:       0      1     2

  // delete all elements of the list
  //numbersList.clear();

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
