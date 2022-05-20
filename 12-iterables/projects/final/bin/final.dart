// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'squares.dart';

void main() {
  final myList = ['bread', 'cheese', 'milk'];
  print(myList);

  for (final item in myList) {
    print(item);
  }

  final reversedIterable = myList.reversed;
  print(reversedIterable);

  final reversedList = reversedIterable.toList();
  print(reversedList);

  // final myIterable = Iterable();
  Iterable<String> myIterable = ['red', 'blue', 'green'];

  final thirdElement = myIterable.elementAt(2);
  print(thirdElement);

  final firstElement = myIterable.first;
  final lastElement = myIterable.last;

  print(firstElement);
  print(lastElement);

  final numberElements = myIterable.length;
  print(numberElements);

  final squares = HundredSquares();
  for (int square in squares) {
    print(square);
  }
}
