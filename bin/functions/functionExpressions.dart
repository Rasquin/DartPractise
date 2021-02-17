/*
FUNTIONS EXPRESSIONS

Short hand syntax
*/

void main() {
  findPerimeter(4, 2);

  int rectArea = getArea(10, 5);
  print("The rectangle area is $rectArea");
}

// function to find a perimeter with fat arrow expression. Never uses {}
void findPerimeter(int lenght, int breadth) =>
    print("The perimeter is ${2 * (lenght + breadth)}");

// function that calculate the area of a rectagle. When using fat arrow never use the return keyword
int getArea(int lenght, int breadth) => lenght * breadth;
