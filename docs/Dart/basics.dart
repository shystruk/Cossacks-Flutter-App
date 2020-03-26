void main() {
  print('Hi here! You\'ll find some tips and basics in Dart :)');

  // Data Types
  // All data types are Objects and default value is null
  
  // The Dart language has two numeric types: int and double
  int age = 20;
  var year = 2020;
  double exponents = 1.42e5;

  // String
  String name = 'Vasyl';
  String long = 'Hello $name';
  print('${long.length}');

  // Boolean
  bool isValid = true;

  // Final and Const
  final String cityName = 'Kyiv';
  const int cityAge = 200;

  // ?? Expression
  String firstName = 'Vasyl';
  print(firstName ?? 'John');

  // for ..in loop
  List cities = ['Kyiv', 'Ternopil'];
  for(String city in cities) {
    print(city);
  }

  // Function
  int getYear(int year) {
    return year ?? 2020;
  }

  // Oprional parametr
  String getFullName(String firstName, [String lastName]) =>
    '$firstName ${lastName ?? ''}';
  getFullName('Vasyl');

  // Named parameter. The sequence does not matter
  bool isValidZipCode({ int zipCode }) =>
    zipCode >= 5;
  isValidZipCode(zipCode: 4);

  // Handle exceptions
  // If you know the exception name
  try {
    int result = 12 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print("Can not divide by Zero :)");
  }

  // Using Stack Trace, which shows steps where is the error 
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch(e, s) {
    print("The exception $e");
    print("Stack Trace $s");
  }
}

// Create own Exception
class EmptyStringException implements Exception {
  String errorMessage() {
    return 'String is empty';
  }
}

void setString({String string = ''}) {
  if (string.length == 0) {
    throw new EmptyStringException();
  }
}

// try {
//   setString(string: '');
// } catch (e) {
//   print(e.errorMessage());
// }

// Class
class Student {
  int id;
  int age;
  String name;
  String firstName;

  // Parameterised Constructor
  // Student(this.id, this.name);
  Student(this.id, this.name, int age) {
    this.age = age;
    print('Constructor is calling first');
  }

  // Named Constructor
  Student.myCustomConstructor() {
    // var student = Student.myCustomConstructor() => Student object is returned
  }

  void set setFirstName(String name) {
    firstName = 'First Name is $name';
  }

  String get getFirstName {
    return firstName;
  }

  void study() {
    print('${this.name} is studying. He is ${this.age} :)');
  }
}

// Inheritance
// Call parent super class manually 
class Animal {
  String color;

  Animal(String color) {
    print('Animal constructor. Color: $color');
  }
}

class Dog extends Animal {
  String name;

  // call super class constructor
  Dog(this.name, String color) : super(color) {
    print('Dog constructor');
  }

  void eat() {
    print('${this.name} is eating :)');
  }
}

// var dog = new Dog('Marli');
// dog.eat();
