/*
Dart defining Constants: 'final' and 'const' keyword

If you never want to change the value, then use 'final' and 'const'.

'final' variable can only be set once and it is initialized when accessed.
'const' variable is implicitly final, but it is a compile-time constant. It is initilized during compilation. 
g
Instance variable can be final but not const. If you wanr a constant at Class level, then make it a 'static const'.

*/

void main() {
  // final keyword
  final cityName = 'Caracas';
  //cityName = 'madrid';--> error becuase you cannot add a new value to a final variable
  final String countryName = 'Venezuela';

  // const keyword
  const double PI = 3.14;
  const double gravity = 9.8;
}

class Circle {
  final color = 'red';
  // const PI = 3.14; ---> error
  static const PI = 3.14;
}
