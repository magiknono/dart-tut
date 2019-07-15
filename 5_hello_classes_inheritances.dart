void main() {
  print("-- classes and inheritances --");

  Person nono = Person('nono', 35, occupation: 'Pilot')
  //.. is he cascade operator, it lets you perform a series of operations on the same object.
    ..name = "Nene"
    ..speak();

  print(nono.name);
  nono.name = "Nono";
  nono.speak();
  print(nono.occupation);

  Person jane = Person.fromJson({'name': 'Jane', 'age': 39}, 'web developer');
  jane.speak();
  print(jane.occupation);

  var bob = Employee('bob', 23, DateTime.now());
  bob.speak();

  // error because of final keyword
  // bob.joinDate = DateTime.now();
}

// class are extendable, herits Person variables and methods
class Employee extends Person {
  // field cannot be change with keyword final, once assigned a value, a final variable's value cannot be changed
  final DateTime joinDate;

  Employee(String name, int age, this.joinDate): super(name, age);

  // override methods from the parent class
  @override
  speak() {
    print('my name is $name. I joined on $joinDate');
  }

}

class Person {
  // var name;
  // var age;

  // specific about property types
  // you can declare private property and methods with _
  String _name;
  int age;
  String occupation;

  // long constructor
  // Person(name, age) {
  //  this.name = name;
  //  this.age = age;

  // shorthand constructor  , {} for optionnal parameters OR [] optionnal positional parameter
  Person(this._name, this.age, {this.occupation});

  // json constructor. Can have multiple constructor
  Person.fromJson(Map json, [this.occupation]) {
    _name = json['name'];
    age = json['age'];
  }

  // define setter and getter for name private property
  String get name => _name;
  void set name(String updatedName) => _name = updatedName;
  

  speak() {
    print("My name is $_name. I'm $age years old");
  }
}

// void _hiddenMethod() {
//   print('This method is hidden');
// }