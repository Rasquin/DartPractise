/*
FUNTIONS Parameters

Parameters can be Requiered of OPtional 
 -Positional
 -Named --> Prevent errors if there are large number of parameters
 -Default --> You can assign defualt values to parameters


*/

// 1. Required Parameters ()
// 2. OPtional Positional Parameters []
// 3. OPtional Name Parameters {}
// 4. OPtional Default Parameters {type nameParameter = defaultValue}

void main() {
  //Required parameters
  printCities("New York", "Amsterdam", "Lisbon");
  print("");

  //Optional Positional Parameters
  printCountries("United States", "The Netherlands");
  print("");

  //Optional Name Parameters
  findVolume(10, breadth: 5, height: 20);
  print("");

  //Optional Default Parameters
  //findVolumeDefault(10, breadth: 5, height: 20); --> you overwrite the default parameters
  findVolumeDefault(10); // --> it takes the default parameters
}

//  Required Parameters
void printCities(String name1, String name2, String name3) {
  // all 3 parameters are necessary, if missing one, you will get error
  print("City Name 1 is $name1");
  print("City Name 2 is $name2");
  print("City Name 3 is $name3");
}

// Optional Positional Parameters --> between [ ]
void printCountries(String name1, String name2, [String name3]) {
  // only the first 2 parameters are necessary, if missing the last, you wont get error
  // void printCountries(String name1, [String name2, String name3]) --> parameter 2 and 3 optional

  print("Country Name 1 is $name1");
  print("Country Name 2 is $name2");
  print("Country Name 3 is $name3");
}

// Optional Name Parameters --> between {}, sequence does not matters
int findVolume(int lenght, {int breadth, int height}) {
  print("Lenght is $lenght");
  print("Breadth is $breadth");
  print("Height is $height");
  print("Volumen is ${lenght * breadth * height}.");
}

// Optional Default Parameters
//--> between { type parameterName = defaultValue}, sequence does not matters
//--> If you dont pase the value for a defualt value, it will take the dafault as value
//--> If you will assign a value to a default value, you have to overwrite it like when named parameters
int findVolumeDefault(int lenght, {int breadth = 2, int height = 20}) {
  print("Lenght is $lenght");
  print("Breadth is $breadth");
  print("Height is $height");
  print("Volumen is ${lenght * breadth * height}.");
}
