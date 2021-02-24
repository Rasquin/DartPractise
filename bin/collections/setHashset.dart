/*
SET and HASHSET

Set:
- Unordered collection of unique items --> cannot contain duplicated elements
- Cannot get elements by INDEX, since the items are unordered

HashSet:
- Implementation of unordered Set
- It is based on hash-table based Set implementation

*/

void main() {
  // Method I: Set from a list
  Set<String> countries = Set.from(["England", "India", "China", "Panama"]);
  // You can add many new elements to the set
  countries.add("Colombia");
  countries.add("Australia");

  // Method II: Set using method constructor
  Set<int> numbersSet = Set();
  // Insert operation --> use add() method
  numbersSet.add(73);
  // This entry will be ignored --> elements should be unique
  numbersSet.add(73);
  numbersSet.add(23);
  numbersSet.add(45);
  numbersSet.add(51);

  numbersSet.contains(73); // return true if it is found in set
  numbersSet.remove(51); // returns true if the element is found and deleted
  numbersSet.isEmpty; // returns true is the set is empty
  numbersSet.length; // returns the number of elements present in the set
  //numbersSet.clear(); // remove all the elements in the set

  print("\n");

  // print all values --> Using individual Elements (objects)
  print("Printing all values using each element (objects)");
  for (int element in numbersSet) {
    print(element);
  }
  print("\n");

  // print all values -->  lambda version
  print("Printing all values using lambda");
  numbersSet.forEach((element) => print(element));
  print("\n");

  //print all values --> Index version --> no index in sets
  /*
  print("Printing all values using Index");
  for (int i = 0; i < numbersSet.length; i++) {
    print(numbersSet[i]);
  }*/
}
