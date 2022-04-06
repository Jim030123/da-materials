// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  var userInput = 'sPoNgEbOb@eXaMpLe.cOm';
  final lowercase = userInput.toUpperCase();
  print(lowercase);

  userInput = ' 221B Baker St.   ';
  final trimmed = userInput.trimLeft();
  print("'$trimmed'");

  var time = Duration(hours: 1, minutes: 32, seconds: 57);
  var hours = time.inHours;
  var minutes = time.inMinutes % 60;
  var seconds = time.inSeconds % 60;
  var timeString = '$hours:$minutes:$seconds';
  print(timeString); // 1:32:57

  padding();
  splittingAndJoining();
}

void padding() {
  final time = Duration(hours: 1, minutes: 2, seconds: 3);
  final hours = time.inHours;
  final minutes = '${time.inMinutes % 60}'.padLeft(2, '0');
  final seconds = '${time.inSeconds % 60}'.padLeft(2, '0');
  final timeString = '$hours:$minutes:$seconds';
  print(timeString);
}

void splittingAndJoining() {
  const csvFileLine = 'Bob,Smith,37,Paris,France';
  final fields = csvFileLine.split(',');
  print(fields);

  final joined = fields.join('-');
  print(joined);
}
