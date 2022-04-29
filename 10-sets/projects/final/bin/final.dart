// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'dart:math';

void main() {
  creatingSets();
  operationsOnSets();
  intersectionsAndUnions();
  findingDuplicates();
}

void creatingSets() {
  // final Set<int> someSet = {};
  final someSet = <int>{};
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);
}

void operationsOnSets() {
  final desserts = {'cake', 'pie', 'donut'};
  print(desserts.contains('cake')); // true
  print(desserts.contains('cookies'));

  final drinks = <String>{};
  drinks.add('cola');
  drinks.add('water');
  drinks.add('cola');
  print(drinks);

  drinks.remove('water');
  print(drinks);

  drinks.addAll(['juice', 'coffee', 'milk']);
  print(drinks);
}

void intersectionsAndUnions() {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final intersection = setA.intersection(setB);
  print(intersection);

  final union = setA.union(setB);
  print(union);
}

void findingDuplicates() {
  final randomGenerator = Random();
  final randomIntList = <int>[];
  for (int i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomIntList.add(randomInt);
  }
  print(randomIntList);

  final uniqueValues = <int>{};
  final duplicates = <int>{};
  for (int number in randomIntList) {
    if (uniqueValues.contains(number)) {
      duplicates.add(number);
    }
    uniqueValues.add(number);
  }
  print(duplicates);
}
