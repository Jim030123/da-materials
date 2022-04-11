// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  changingCase();
  trimming();
  padding();
  splittingAndJoining();
  findAndReplace();
  stringBuffer();
  // stringValidation();
  // regex();
  // validatePassword();
  // extractingText();
  // substringMultipleMatches();
  // regexGroups();
}

void changingCase() {
  const userInput = 'sPoNgEbOb@eXaMpLe.cOm';
  final lowercase = userInput.toLowerCase();
  print(lowercase);
}

void trimming() {
  const userInput = ' 221B Baker St.   ';
  final trimmed = userInput.trim();
  print(trimmed);
}

void padding() {
  // final time = Duration(hours: 1, minutes: 32, seconds: 57);
  // final hours = time.inHours;
  // final minutes = time.inMinutes % 60;
  // final seconds = time.inSeconds % 60;
  // final timeString = '$hours:$minutes:$seconds';
  // print(timeString);

  final time = Duration(hours: 1, minutes: 2, seconds: 3);
  final hours = time.inHours;
  final minutes = '${time.inMinutes % 60}'.padLeft(2, '0');
  final seconds = '${time.inSeconds % 60}'.padLeft(2, '0');
  final timeString = '$hours:$minutes:$seconds';
  print(timeString);
}

void splittingAndJoining() {
  const csvFileLine = 'Martin,Emma,12,Paris,France';
  final fields = csvFileLine.split(',');
  print(fields);

  final joined = fields.join('-');
  print(joined);
}

void findAndReplace() {
  const phrase = 'live and learn';
  final withUnderscores = phrase.replaceAll(' ', '_');
  print(withUnderscores);
}

void stringBuffer() {
  // var message = 'Hello' + ' my name is ';
  // const name = 'Ray';
  // message += name;
  // 'Hello my name is Ray'

  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  message.toString();
  // 'Hello my name is Ray'

  for (int i = 2; i <= 1024; i *= 2) {
    print(i);
  }

  final buffer = StringBuffer();
  for (int i = 2; i <= 1024; i *= 2) {
    buffer.write(i);
    buffer.write(' ');
  }
  print(buffer);
}

void stringValidation() {
  const text = 'I love Dart';
  print(text.startsWith('I'));
  print(text.endsWith('Dart'));
  print(text.contains('love'));
  print(text.contains('Flutter'));

  const password = 'password123';
}

void regex() {
  final regex = RegExp('cat');
  print(regex.hasMatch('cat'));
  print(regex.hasMatch('dog'));
  print(regex.hasMatch('cats'));
  print('cat'.contains(regex));
  print('dog'.contains(regex));
  print('cats'.contains(regex));

  final matchSingle = RegExp('c.t');
  print(matchSingle.hasMatch('cat'));
  print(matchSingle.hasMatch('cot'));
  print(matchSingle.hasMatch('cut'));
  print(matchSingle.hasMatch('ct'));

  final oneOrMore = RegExp('wo+w');
  print(oneOrMore.hasMatch('ww'));
  print(oneOrMore.hasMatch('wow'));
  print(oneOrMore.hasMatch('wooow'));
  print(oneOrMore.hasMatch('wooooooow'));

  final zeroOrMore = RegExp('wo*w');
  print(zeroOrMore.hasMatch('ww'));
  print(zeroOrMore.hasMatch('wow'));
  print(zeroOrMore.hasMatch('wooow'));
  print(zeroOrMore.hasMatch('wooooooow'));

  final set = RegExp('b[oa]t');
  print(set.hasMatch('bat')); // true
  print(set.hasMatch('bot')); // true
  print(set.hasMatch('but')); // false
  print(set.hasMatch('boat')); // false
  print(set.hasMatch('bt')); // false

  final letters = RegExp('[a-zA-Z]');
  print(letters.hasMatch('a')); // true
  print(letters.hasMatch('H')); // true
  print(letters.hasMatch('3z')); // true
  print(letters.hasMatch('2')); // false

  final escaped = RegExp(r'c\.t');
  print(escaped.hasMatch('c.t'));
  print(escaped.hasMatch('cat'));
}

void validatePassword() {
  const password = 'Password1234';

  final lowercase = RegExp(r'[a-z]');
  final uppercase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');

  if (!password.contains(lowercase)) {
    print('Your password must have a lowercase letter!');
  } else if (!password.contains(uppercase)) {
    print('Your password must have an uppercase letter!');
  } else if (!password.contains(number)) {
    print('Your password must have a number!');
  } else {
    print('Your password is OK.');
  }

  if (password.length < 12) {
    print('Your password must be at least 12 characters long!');
  }

  final goodLength = RegExp(r'.{12,}');
  if (!password.contains(goodLength)) {
    print('Your password must be at least 12 characters long!');
  }
}

void extractingText() {
  const htmlText = '''
<!DOCTYPE html>
<html>
<body>
<h1>Dart Tutorial</h1>
<p>Dart is the best language.</p>
</body>
</html> 
''';

  var heading = htmlText.substring(34, 47);
  print(heading);

  final start = htmlText.indexOf('<h1>') + '<h1>'.length;
  final end = htmlText.indexOf('</h1>');
  heading = htmlText.substring(start, end);
  print(heading);
}

void substringMultipleMatches() {
  const text = '''
<h1>Dart Tutorial</h1>
<h1>Flutter Tutorial</h1>
<h1>Other Tutorials</h1>
''';

  var position = 0;
  while (true) {
    var start = text.indexOf('<h1>', position) + '<h1>'.length;
    var end = text.indexOf('</h1>', position);
    if (start == -1 || end == -1) {
      break;
    }
    final heading = text.substring(start, end);
    print(heading);
    position = end + '</h1>'.length;
  }
}

void regexGroups() {
  const text = '''
<h1>Dart Tutorial</h1>
<h1>Flutter Tutorial</h1>
<h1>Other Tutorials</h1>
''';

  final headings = RegExp(r'<h1>(.+)</h1>');
  final matches = headings.allMatches(text);

  for (final match in matches) {
    print(match.group(1));
  }
}
