// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  basicStringManipulationExercise1();
  basicStringManipulationExercise2();
  buildingStringsExercise();
  stringValidationExercise();
  challenge1();
  challenge2();
}

/// Basic String Manipulation: Exercise 1
///
/// Take a multiline string such as the text below and split it into a
/// list of single lines. Hint: Split at the newline character.
///
/// ```
/// France
/// USA
/// Germany
/// Benin
/// China
/// Mexico
/// Mongolia
/// ```
void basicStringManipulationExercise1() {
  const countriesString = '''
France
USA
Germany
Benin
China
Mexico
Mongolia''';

  final countriesList = countriesString.split('\n');
  print(countriesList);
}

/// Basic String Manipulation: Exercise 1
///
/// Find an emoji online to replace `:]` with in the following text:
///
/// ```
/// How's the Dart book going? :]
/// ```
void basicStringManipulationExercise2() {
  const original = "How's the Dart book going? :]";
  final replaced = original.replaceAll(':]', '😊');
  print(replaced);
}

/// Building Strings Exercise
///
/// Use a string buffer to build the following string:
///
/// ```text
///  *********
/// * ********
/// ** *******
/// *** ******
/// **** *****
/// ***** ****
/// ****** ***
/// ******* **
/// ******** *
/// *********
/// ```
///
/// Hint: Use a loop inside of a loop.
void buildingStringsExercise() {
  final buffer = StringBuffer();
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (j == i) {
        buffer.write(' ');
      } else {
        buffer.write('*');
      }
    }
    buffer.write('\n');
  }
  print(buffer);
}

/// String Validation Exercise
///
/// Validate that a credit card number contains only numbers and is
/// exactly 16 digits long.
void stringValidationExercise() {
  final regex = RegExp(r'[0-9]{16}');
  print(regex.hasMatch('1111222233334444')); // true
  print(regex.hasMatch('123')); // false
  print(regex.hasMatch('aaaabbbbccccdddd')); // false
}

/// Challenge 1: Email Validation
///
/// Write a regular expression to validate an email address.
void challenge1() {
  print('Challenge 1');

  // ^: start
  // \w+: alphanumeric characters
  // @: literal @
  // \.: literal .
  // $: end
  final regex = RegExp(r'^\w+@\w+\.\w+$');

  print(regex.hasMatch('me@example.com')); // true
  print(regex.hasMatch('my_email@example.com')); // true
  print(regex.hasMatch('my email@example.com')); // false
  print(regex.hasMatch('meexample.com')); // false
  print(regex.hasMatch('me@examplecom')); // false
}

/// Challenge 2: Karaoke Words
///
/// An LRC file contains the timestamps for the lyrics of a song. How would
/// you extract the time and lyrics for the following line of text using the
/// `substring` method:
///
/// ```
/// [00:12.00]Row, row, row your boat
/// ```
///
/// This means that the lyrics "Row, row, row your boat" begin at 0 minutes
/// and 12.0 seconds.
///
/// Use the `substring` method. You can use `int.parse` to convert a string
/// to an integer.
void challenge2() {
  print('Challenge 2');

  usingSubstring();
  usingRegexGroups();
}

void usingSubstring() {
  const line = '[00:12.00]Row, row, row your boat';
  final minutesString = line.substring(1, 3);
  final minutesInt = int.parse(minutesString);
  final secondsString = line.substring(4, 6);
  final secondsInt = int.parse(secondsString);
  final hundredthsString = line.substring(7, 9);
  final hundredthsInt = int.parse(hundredthsString);
  final lyrics = line.substring(10);

  print('$minutesInt minutes and $secondsInt.$hundredthsInt seconds');
  print(lyrics);
}

// You may also use regex groups. However, you haven't learned about
// nullable values yet and this solution requires some knowledge of that.
void usingRegexGroups() {
  const line = '[00:12.00]Row, row, row your boat';

  // ^     start
  // \[    literal [
  // (\d+) group of digits
  // :     literal :
  // \.    literal .
  // \]    literal ]
  // (.+)  group of characters (lyrics)
  // $     end
  final regex = RegExp(r'^\[(\d+):(\d+)\.(\d+)\](.+)$');

  // The ! at the end means that the match cannot be null. Using ! can
  // crash your app if it is null and there are safer methods than this.
  // Read the chapter on Nullability for more about this.
  final match = regex.firstMatch(line)!;

  final minutesString = match.group(1)!;
  final minutesInt = int.parse(minutesString);
  final secondsString = match.group(2)!;
  final secondsInt = int.parse(secondsString);
  final hundredthsString = match.group(3)!;
  final hundredthsInt = int.parse(hundredthsString);
  final lyrics = match.group(4);

  print('$minutesInt minutes and $secondsInt.$hundredthsInt seconds');
  print(lyrics);
}
