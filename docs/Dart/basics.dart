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

  // Named parameter. Sequence does not matters
  bool isValidZipCode({ int zipCode }) =>
    zipCode >= 5;
  isValidZipCode(zipCode: 4);
}
