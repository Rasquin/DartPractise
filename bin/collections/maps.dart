/*
MAP

- Unordered collection of key-value pair --> can be of any object type
- Each key in a Map should always be unique
- The value can be repeated
- Commonly called Hash or Dictionary
- Size of map is not fixed, it can increase or decrease as per the number of elements

HashMap:
- Implementation of Map
- It is based on hash-table 

*/

void main() {
  // Method I --> using literals
  Map<String, int> countryDialingCode = {
    "USA": 1,
    "India": 91,
    "Pakistan": 92,
  };

  //Method II --> Using Map constructor
  Map<String, String> fruits = Map();
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"] = "yellow";

  fruits.containsKey("apple"); // returns ture is the Key is present on the Map
  fruits.update("apple", (value) => "green"); // update the value of a key
  fruits.remove("apple"); // Delete the key-value
  fruits.isEmpty; // returns true if the map is empty
  fruits.length; // return the length of the map
  //fruits.clear(); // delete all elements

  print("Printing one value of one key");
  print(fruits["apple"]);
  print("\n");

  //Print all keys
  print("Printing all keys");
  for (String key in fruits.keys) {
    print(key);
  }
  print("\n");

  //Print all values
  print("Printing all values");
  for (String value in fruits.values) {
    print(value);
  }
  print("\n");

  // Print all pair of key-values using lambda
  print("Printing all pair key-value");
  fruits.forEach((key, value) => print("key: $key and value: $value"));
}
