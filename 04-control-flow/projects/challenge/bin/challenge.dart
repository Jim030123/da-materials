// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  /// Comparison operators: Exercise 1
  ///
  /// Create a constant called `myAge` and set it to your age. Then, create a
  /// constant named `isTeenager` that uses Boolean logic to determine if the
  /// age denotes someone in the age range of 13 to 19.

  const myAge = 42;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print('isTeenager: $isTeenager');

  /// Comparison operators: Exercise 2
  ///
  /// Create another constant named `maryAge` and set it to `30`. Then, create
  /// a constant named `bothTeenagers` that uses Boolean logic to determine if
  /// both you and Mary are teenagers.

  const maryAge = 30;
  const bothTeenagers = (maryAge >= 13 && maryAge <= 19) && isTeenager;
  print('bothTeenagers: $bothTeenagers');

  /// Comparison operators: Exercise 3
  ///
  /// Create a `String` constant named `reader` and set it to your name. Create
  /// another `String` constant named `ray` and set it to `'Ray Wenderlich'`.
  /// Create a Boolean constant named `rayIsReader` that uses string equality
  /// to determine if `reader` and `ray` are equal.

  const reader = 'Bob Smith';
  const ray = 'Ray Wenderlich';
  const rayIsReader = reader == ray;
  print('rayIsReader: $rayIsReader');

  /// The if statement: Exercise 1
  ///
  /// Create a constant named `myAge` and initialize it with your age. Write
  /// an `if` statement to print out "Teenager" if your age is between `13`
  /// and `19`, and "Not a teenager" if your age is not between `13` and `19`.

  // const myAge = 42; // same as above
  // const isTeenager = myAge >= 13 && myAge <= 19; // same as above
  if (isTeenager) {
    print('Teenager');
  } else {
    print('Not a teenager');
  }

  /// The if statement: Exercise 2
  ///
  /// Use a ternary conditional operator to replace the `else-if` statement
  /// that you used above. Set the result to a variable named `answer`.
  const answer = (isTeenager) ? 'Teenager' : 'Not a teenager';
  print(answer);

  /// Switch statements: Exercise 1
  ///
  /// Make an `enum` called `AudioState` and give it values to represent
  /// `playing`, `paused` and `stopped` states.

  // Find the AudioState enum below, outside of the main() function.

  /// Switch statements: Exercise 2
  ///
  /// Create a constant called `audioState` and give it an `AudioState` value.
  /// Write a `switch` statement that prints a message based on the value.
  const audioState = AudioState.stopped;
  switch (audioState) {
    case AudioState.playing:
      print('Audio playing');
      break;
    case AudioState.paused:
      print('Audio paused');
      break;
    case AudioState.stopped:
      print('Audio stopped');
      break;
  }

  /// Loops: Exercise 1
  ///
  /// Create a variable named `counter` and set it equal to `0`. Create a
  /// `while` loop with the condition `counter < 10`. The loop body should
  /// print out "counter is X" (where X is replaced with the value of
  /// `counter`) and then increment `counter` by 1.

  var counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

  /// Loops: Exercise 2
  ///
  /// Write a `for` loop starting at `1` and ending with `10` inclusive. Print
  /// the square of each number.

  for (var i = 1; i <= 10; i++) {
    print(i * i);
  }

  /// Challenge 1: Find the error
  ///
  /// What's wrong with the following code?
  ///
  /// ```
  /// const firstName = 'Bob';
  /// if (firstName == 'Bob') {
  ///   const lastName = 'Smith';
  /// } else if (firstName == 'Ray') {
  ///   const lastName = 'Wenderlich';
  /// }
  /// final fullName = firstName + ' ' + lastName;
  /// ```

  // `lastName` was declared in the `if` statement scope but was used
  // in the parent scope. You need to declare it at or above the scope
  // where it is needed.
  const firstName = 'Bob';
  var lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);

  /// Challenge 2: Boolean challenge
  ///
  /// In each of the following statements, what is the value of the
  /// Boolean expression?
  ///
  /// ```
  /// true && true
  /// false || false
  /// (true && 1 != 2) || (4 > 3 && 100 < 1)
  /// ((10 / 2) > 3) && ((10 % 2) == 0)
  /// ```

  print(true && true); // true
  print(false || false); // false
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); // true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); // true

  /// Challenge 3: Next power of two
  ///
  /// Given a number, determine the next power of two above or equal to
  /// that number.

  const number = 946;
  var trial = 1;
  var times = 0;
  while (trial < number) {
    trial = trial * 2;
    times += 1;
  }
  print('Next power of 2 >= $number is $trial '
      'which is 2 to the power of $times.');
  // Next power of 2 >= 946 is 1024 which is 2 to the power of 10.

  /// Challenge 4: Fibonacci
  ///
  /// Calculate the nth Fibonacci number. Remember that Fibonacci numbers
  /// start its sequence with 1 and 1, and then subsequent numbers in the
  /// sequence are equal to the previous two values added together. You can
  /// get a refresher here: https://en.wikipedia.org/wiki/Fibonacci_number

  const n = 10;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  print('Fibonacci number $n is $current.');
  // Fibonacci number 10 is 55.

  /// Challenge 5: How many times?
  ///
  /// In the following `for` loop, what will be the value of sum, and how many
  /// iterations will happen?
  ///
  /// ```
  /// var sum = 0;
  /// for (var i = 0; i <= 5; i++) {
  ///   sum += i;
  /// }
  /// ```

  var sum = 0;
  var count = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
    count++;
  }
  print('The value of the sum is $sum after $count iterations.');
  // The value of the sum is 15 after 6 iterations.

  /// Challenge 6: The final countdown
  ///
  /// Print a countdown from 10 to 0.

  for (var i = 10; i >= 0; i--) {
    print(i);
  }

  /// Challenge 7: Print a sequence
  ///
  /// Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.

  print('0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0');
  // Just kidding. :]
  // Here's one of several other ways to do it:
  for (var i = 0; i <= 10; i++) {
    print(i / 10);
  }
}

/// Switch statements: Exercise 1
///
/// Make an `enum` called `AudioState` and give it values to represent
/// `playing`, `paused` and `stopped` states.
enum AudioState {
  playing,
  paused,
  stopped,
}
