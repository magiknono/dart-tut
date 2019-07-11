void main() {
  // function call with optionnal parameters
  // call with positional parameters
  boom('Hello World');
  boom('Hello World', true);

  // call with named optional parameters
  kaboom('How are you');
  kaboom('How are you', exclaim: true);
}
  // function with 2 parameters

  // Positional optional parameters is with []
boom(String str, [bool exclaim = false]) {
  var result = str.toUpperCase();
  if (exclaim) result += '!!!!!!!!!';
  print(result);
}
 // Named optional parameters
kaboom(String str, {bool exclaim = false}) {
  var result = str.toUpperCase();
  if (exclaim) result += '??';
  print(result);
}
