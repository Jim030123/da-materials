// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  dartClassesExercise();
  constructorsExercise();
  challenge1();
  challenge2();
}

/// Dart Classes Exercise
///
/// 1. Create a class called `Password` and give it a string property
///    called `value`.
/// 2. Override the `toString` method of `Password` so that it returns `value`.
/// 3. Add a method to `Password` called `isValid` that returns `true` only
///    if the length of `value` is greater than 8.
void dartClassesExercise() {
  final password = Password();
  password.value = 'Password123';
  print(password);
  print(password.isValid());
}

class Password {
  String value = '';

  bool isValid() => value.length > 8;

  @override
  String toString() => value;
}

/// Constructors Exercise
///
/// Given the following class:
///
/// ```
/// class PhoneNumber {
///   String value = '';
/// }
/// ```
///
/// 1. Make `value` a `final` variable, but not private.
/// 2. Add a `const` constructor as the only way to initialize a
/// `PhoneNumber` object.
void constructorsExercise() {
  final number = PhoneNumber('555-2121');
  print(number.value);
}

class PhoneNumber {
  const PhoneNumber(this.value);
  final String value;
}

/// Challenge 1: Bert and Ernie
///
/// Create a `Student` class with final `firstName` and `lastName`
/// string properties and a variable `grade` as an `int` property.
/// Add a constructor to the class that initializes all the properties.
/// Add a method to the class that nicely formats a `Student` for printing.
/// Use the class to create students `bert` and `ernie` with grades of 95 and
/// 85, respectively.
void challenge1() {
  final ernie = Student('Ernie', 'Henson', 95);
  final bert = Student('Bert', 'Oz', 85);
  print('$ernie\n$bert');
}

class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() => '$firstName $lastName: $grade';
}

/// Challenge 2: Spheres
///
/// Create a `Sphere` class with a `const` constructor that takes a
/// `radius` as a named parameter. Add getters for the volume and
/// surface area but none for the radius. Don't use the `dart:math` package
/// but store your own version of `pi` as a `static` constant. Use your class
/// to find the volume and surface area of a sphere with a radius of 12.
void challenge2() {
  const sphere = Sphere(radius: 12);
  final volume = sphere.volume;
  final area = sphere.area;
  print('volume: $volume, area: $area');
}

class Sphere {
  const Sphere({required int radius}) : _radius = radius;

  final int _radius;

  double get volume => 4 / 3 * pi * _radius * _radius * _radius;
  double get area => 4 * pi * _radius * _radius;

  static const double pi = 3.14159265359;
}
