/*
GETTER & SETTER
*/

// 1. Default Getter and Setter
// 2. Custom Getter and Setter
// 3. Private Instance Variable

void main() {
  var student = Student();

  // Calling Default Setter to set the value
  student.name = "Ciel";
  // Calling Default Getter to get the value
  print(student.name);

  // Calling Custom Setter to set value
  student.percentage = 400.0;
  // Calling Custom Getter to get value
  print(student.percentage);
}

class Student {
  //Default getter and setter
  // Instance Variable --> 'name'  will act as default getter and setter for this particular instance variable
  String name;

  // CUSTOM SETTER AND GETTER
  // percentage --> instance variable with custom setter and getter
  // int percentage; --> because we are doing custom setter and getter, we do not need this anymore

  // Custom SETTER

  // percent is only for local porpose, so it shoul not be declared as instance variable
  // double percent; --> double _percent; to make private to its own library

  double _percent; // private instance variable

  // Long version Custom Setter
  /*
  void set percentage(double marksSecured) {
    _percent = (marksSecured / 500) * 100;
  }
  */

  // Short version Custom Setter
  void set percentage(double marksSecured) =>
      _percent = (marksSecured / 500) * 100;

  //Custom GETTER

  // Long version Custom Getter
  /*
  double get percentage {
    return _percent;
  }
  */

  // Short version Custom Getter
  double get percentage => _percent;
}
