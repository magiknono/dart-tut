void main() {
  print("Types playground");
  // Number
  int num1 = 1;
  int num2 = 2;
  // usual operation with numbers
  print(num1 * num2);

  // String
  var str1 = 'Lorem';
  var str2 = "ipsum";

  // String concatenation
  String str3 = str1 + str2 + 'dolor';
  print(str3);
  // String interpolation
  String str4 = '$str1 $str2 dolor';
    print(str4);
  // String multi lines
  var str5 = """Multi
  line
  String""";
  print(str5);

  // Boolean
  bool isBrowser = true;
  bool isInvisible = false;
  print(isBrowser || isInvisible);
  print(isBrowser && isInvisible);

  // Function
  sum(a, b) {
    return a + b;
  }
  print(sum(5,10));

  // Function set as a value
  var difference = (int a, int b) {
    return a - b;
  };
  print(difference(30, 10));

  // Function shorthand version
  var product = (int a, int b) => a * b;
  print(product(3, 3));

  // Lists
  var fruits = ['lemon','pineapple','banana'];
  print(fruits.length);

  fruits.forEach((fruit) => print(fruit));

  var mappedFruits = fruits.map((fruit) => 'I love $fruit').toList();
  print(mappedFruits[1]);

  // Maps
  var user = {
    "name" : "Sam",
    "age" : 25,
    "isSubscriber" : true,
  };
  print(user["name"]);

  user.forEach((key, value) => print("key: $key, value: $value"));

  // Runes ( allow to contain characters outside of UTF16
  Runes input = new Runes('I \u2764 Dart');
  print(new String.fromCharCodes(input));

  // Create symbol
  Symbol simb1 = Symbol('input');
  print(simb1);

  var simb2 = #input;
  print(simb2);
  
}
