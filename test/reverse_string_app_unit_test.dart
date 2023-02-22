import 'package:febacademy/reverse_string_app/reverse_string_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Strings should be reversed', () {
    String initialWord = "Hello";
    String reversedWord = reverseString(initialWord); // "olleH
    expect(reversedWord, 'olleH');
  });
}