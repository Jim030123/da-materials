// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

void main() {
  creatingMaps();
  initializingMapWithValues();
  uniqueKeys();
  operationsOnMap();
}

void creatingMaps() {
  // final Map<String, int> emptyMap = {};
  final emptyMap = <String, int>{};
  final emptySomething = {};
  final mySet = <String>{};
}

void initializingMapWithValues() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };

  print(inventory);
  print(digitToWord);
}

void uniqueKeys() {
  // final treasureMap = {
  //   'garbage': 'in the dumpster',
  //   'glasses': 'on your head',
  //   'gold': 'in the cave',
  //   'gold': 'under your mattress',
  // };

  final treasureMap = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };

  final myHouse = {
    'bedroom': 'messy',
    'kitchen': 'messy',
    'living room': 'messy',
    'code': 'clean',
  };
}

void operationsOnMap() {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes);
  print(numberOfCakes?.isEven);

  inventory['brownies'] = 3;
  print(inventory);

  inventory['cakes'] = 1;
  print(inventory);

  inventory.remove('cookies');
  print(inventory);
}
