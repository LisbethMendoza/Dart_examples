// variables, constants and operators is the same like javascrip and always in a class

void main() {
  // Crete instances for you uses your class
  variables myObject = variables();
  print(myObject.name);
  print(myObject.height);

  String result2 = '${"example".substring(0, 4)}';
  print(result2);

  var myclass = MyClass('Lisbeth');
  print('The value of myObject is: $myclass');

  greet('Lisbeth');

  print(Listas_d);
}

class variables {
  int edad = 25;
  String name = 'Josue';
  double height = 1.75;
}

//Only constants can be out of class
const pi = 3.1416;
final datenow = DateTime.now();

void const_and_date() {
  print(pi);
  print(datenow);
}

//-----------------------------------------------------------------------//
//String interpolation in Dart
void interpolation() {
  String result = '${3 + 2}';
  print(result);

  String name1 = '${"Maria is " + 2.toString() + " years old"}';
  print(name1);

  String name2 = '${"Maria is " + 'very smart'.toUpperCase() + " years old"}';
  print(name2);

//that is when you want to change the form of somtthing, do you wanna put 2 variables, etc
  String result2 = '${"example".substring(0, 4)}';
  print(result2);
}

// MyObject is to used for Combining Different Values, or you dont know the value
class MyClass {
  String name;
  MyClass(this.name);

  // Override toString method
  @override
  String toString() {
    return 'MyClass Name is for see the result: $name';
  }
}

//---------------------------------------------------------------------------------------//
//Funtion in without parameters
void sayHello() {
  print('Solo quiero probar commit amend!');
}

// Funtion with parameters
void greet(String name) {
  print('Hello, $name!');
}

int add(int a, int b) {
  return a + b;
}

void describe(String name, [int age = 0]) {
  print('Name: $name, Age: $age');
}

// Null in dart can be identive with ?
int? a; //that is null
//a ??= 3;  before was null but now your value is 3
//print(1 ?? 3); that want to say. You have the firt paramer if this it isn't null, but if that is null you have the other paramer.

//Class with private property
class private_property {
  int _aProperty = 0; //you only can used that in this class
  int get aProperty => _aProperty; // you can use this value get

  set aProperty(int value) {
    // with tha form you can change the firt private property
    if (value >= 0) {
      _aProperty = value;
    }
  }
}

//Exceptions
//TRY: The first part is try
//catch: for drive any exceptions.
//on: for deive specific exceptions
//Finally: to execute code that must always be executed.

class Division implements Exception {
  String errorMessage() {
    return 'You cannot divide by zero!';
  }
}

double divideNumbers(double a, double b) {
  if (b == 0) {
    throw Division();
  }
  return a / b;
}

void exception() {
  try {
    double result = divideNumbers(10, 0); // This will throw an exception
    print('Result: $result');
  } on Division catch (e) {
    print(e.errorMessage()); // Custom error message
  } catch (e) {
    print('An unknown exception occurred: $e');
  } finally {
    print('Execution completed.');
  }
}

//factory constructors are used when you need more control over object creation
class Square extends Shape {}

class Circle extends Shape {}

class Shape {
  Shape(); // Default constructor

  // Factory constructor
  factory Shape.fromTypeName(String typeName) {
    if (typeName == 'square') return Square(); // Return a Square instance
    if (typeName == 'circle') return Circle(); // Return a Circle instance
    throw ArgumentError(
        'Unrecognized $typeName'); // Throw an error for invalid type
  }
}

// Modificacion para probar commit amend

//List

class Listas_d {
  List myList = [1, 2, 3, 4, 5];  // Definición de la lista

  Listas_d() {
    myList.add(50);  // for add to list 
    myList.removeAt(1); // remove for indice
    myList.remove(2); // for remove
  }
   
}

// if conditionally add elements
void L() {
  bool promoActive = true;
  
  // List with a 'if'
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  print(nav);  
}

void F() {
  bool promoActive = true;
  var listOfInts = [1, 2, 3];
  
  // List with 'if' and 'for'
  var combinedList = [
    'Home',
    'Furniture',
    if (promoActive) 'Outlet',
    for (var i in listOfInts) 'Item $i'
  ];

  print(combinedList);  
}
