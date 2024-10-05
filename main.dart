// variables, constants and operators is the same like javascrip and always in a class

class variables {
  int edad = 25;
  String name = 'Juan';
  double height = 1.75;
}

void main() {
  // Crete instances for you uses your class
  variables myObject = variables();
  print(myObject.name);
  print(myObject.height);
}

//Only constants can be out of class
const pi = 3.1416;
final datenow = DateTime.now();

void const_and_date() {
  print(pi);
  print(datenow);
}
