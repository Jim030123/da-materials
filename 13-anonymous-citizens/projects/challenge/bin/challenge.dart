// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  higherOrderFunctionsExercise();
}

/// Exercise: Higher-Order Functions
///
/// Given the following exam scores:
///
/// ```dart
/// final scores = [89, 77, 46, 93, 82, 67, 32, 88];
/// ```
///
/// 1. Use `sort` to find the highest and lowest grades.
/// 2. Use `where` to find all the B grades, that is, all the scores
///    between `80` and `90`.
void higherOrderFunctionsExercise() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  final highest = scores.first;
  final lowest = scores.last;
  print(highest);
  print(lowest);

  final bGrades = scores.where((score) => score >= 80 && score < 90);
  print(bGrades);
}
