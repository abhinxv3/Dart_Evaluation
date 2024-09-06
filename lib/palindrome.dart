import 'dart:io';

void main() {
  print('Enter a string:');
  String word = stdin.readLineSync()!;
  var check = word == word.split('').reversed.join('');
  if (check) {
    print('$word is a palindrome.');
  } else {
    print('$word is not a palindrome.');
  }
}