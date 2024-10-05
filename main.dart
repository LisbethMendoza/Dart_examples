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


}

class variables {
  int edad = 25;
  String name = 'Juan';
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

  String name2 = '${"Maria is " + 'very smart'.toUpperCase()+ " years old"}';
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
