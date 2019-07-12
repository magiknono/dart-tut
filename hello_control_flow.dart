void main() {
  // if else statements
  var yearOfBirth = 1984;

  if (yearOfBirth < 1990) {
    print('born before 90s');
  } else { // optionnal, can also do else if (yearOfBirth == 1990) {  ..else
    print('born after 90s');
  }

  // Ternary operator
  var str = yearOfBirth < 1990 ? 'before the 90s' : 'during/after the 90s';
  print(str);

  // For loop
  var message = StringBuffer('Dart is fun');

  for (var j = 0; j < 10; j++) {
    message.write('!');
  }
  print(message);

  // For loop 
  var callbacks = [];

  for (var k = 10; k < 15; k++) {
    // add value to the end of the list
    callbacks.add(() => print(k));
  }
  // apply function to each element of this collection in iteration order
  callbacks.forEach((cb) => cb());
  // another for loop over items
  for (var cb in callbacks) { cb(); }

  // While and do-wile loop
  var k = 0;

   while (k < 30) {
     print(k);
     k++;
   }

  // do {
  //    print(k);
  //    k++;
  //  } while (k < 20);

  // Break - continue statement
  var i = 0;

  // break to 5
  do {
    if (i == 5) break;
    print(i);
    i++;
  } while ( i < 10);

  // continue
  for (var n = 1; n < 10; n++) {
    if (n % 2 != 0) continue; // skip odd numbers
      print(n);
  }

  // Switch and case
  const appStatus = 'PENDING';

  switch(appStatus) {
    case 'OPEN':
      print('Your application is open');
      break;
    case 'PENDING':
      print('Your application is pending');
      break;
    case 'CLOSE':
      print('Your application is close');
      break;
    default:
      print('Unknown');
  }

  // Assert
  assert(''.isEmpty); // No output as it evaluates to true
  assert(''.isNotEmpty, 'The string is empty');
}