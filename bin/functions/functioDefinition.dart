/*
FUNTIONS

Collection of statements grouped together to perform an operation
Functions are objects ( can be assigned to a variable or passed as parameter to other functions)
All functions return a value, if not return value is specified the function will return a 'null'.
Specifying the return type is optional but it is recommended as per code convention.

Case I: return a integer
return_type FunctionName (required parameters) { code return;}

Case II: Return nothing
void FunctionName (required parameters) { code;} 
 */

// OBJECTIVES
// 1. Define a Function
// 2. Pass parameters to a Function
// 3. Return value from a Function
// 4. Test that by default a Function returns 'null'

void main() {
  // it is also a function, entry point of application.

  //you have to call your other unction or nothing will happen
  findPerimeter(4, 2); // will trigger your function

  int rectArea = getArea(10, 5);
  print("The rectangle area is $rectArea");
}

void findPerimeter(int lenght, int breadth) {
  // function to find a perimeter

  int perimeter = 2 * (lenght + breadth);
  print("The perimeter is $perimeter");
}

int getArea(int lenght, int breadth) {
  // function that calculate the area of a rectagle

  int area = lenght * breadth;
  return area; // if you comment this, you will get null as return
}
