// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'user.dart';

void main() {
  // Dart Classes
  definingAClass();
  creatingAnObjectFromAClass();
  addingAJsonSerializationMethod();

  // Constructors
  defaultConstructor();
  longFormConstructor();
  shortFormConstructor();
  namedConstructors();
  forwardingConstructors();
  optionalAndNamedParameters();
  initializerLists();
  makingClassesImmutable();

  // Dart Objects
  dartObjects();
  getters();
  setters();

  // Static Members
  staticMembers();
  staticVariables();
  staticMethods();
}

void definingAClass() {
  // class User {
  //   int id = 0;
  //   String name = '';
  // }
}

void creatingAnObjectFromAClass() {
  // class User {
  //   int id = 0;
  //   String name = '';
  // }
  final user = User();
  // user.name = 'Ray';
  // user.id = 42;

  print(user);
}

void addingAJsonSerializationMethod() {
  final user = User();
  print(user.toJson());
}

void cascadeNotation() {
  // final user = User()
  // ..name = 'Ray'
  // ..id = 42;
}

void defaultConstructor() {
  // class Address {
  //   var value = '';
  // }
}

void longFormConstructor() {
  // class User {
  //   User(int id, String name) {
  //     this.id = id;
  //     this.name = name;
  //   }

  //   int id = 0;
  //   String name = '';

  //   // ...
  // }

  // final user = User(42, 'Ray');
  // print(user);
}

void shortFormConstructor() {
  // class User {
  //   User(this.id, this.name);
  //   int id = 0;
  //   String name = '';
  //   // ...
  // }
}

void namedConstructors() {
  // User.anonymous() {
  //   id = 0;
  //   name = 'anonymous';
  // }
  const anonymousUser = User.anonymous();
  print(anonymousUser);
}

void forwardingConstructors() {
  // User.anonymous() : this(0, 'anonymous');
  final anonymousUser = User.anonymous();
  print(anonymousUser);
}

void optionalAndNamedParameters() {
  // MyClass([this.myProperty]);
  // MyClass({this.myProperty});
  // MyClass({required this.myProperty});

  // final user = User(42, 'Ray');
  // User({this.id = 0, this.name = 'anonymous'});
  final user = User(id: 42, name: 'Ray');
  print(user);
}

void initializerLists() {
// User({int id = 0, String name = 'anonymous'})
//     : _id = id,
//       _name = name;

//   User({int id = 0, String name = 'anonymous'})
//     : _id = id,
//       _name = name {
//   print('User name is $_name');
// }

  final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';

  print(vicki);
}

void makingClassesImmutable() {
  const user = User(id: 42, name: 'Ray');
  const anonymousUser = User.anonymous();
  print(user);
  print(anonymousUser);
}

void dartObjects() {
  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty);
  anotherObject.myProperty = 2;
  print(myObject.myProperty);
}

void getters() {
  const ray = User(id: 42, name: 'Ray');
  print(ray.id);
  print(ray.name);
}

void setters() {
  // final email = Email();
  // email.value = 'ray@example.com';
  // final emailString = email.value;

  final email = Email('ray@example.com');
  final emailString = email.value;
  print(emailString);
}

void staticMembers() {
  final value = SomeClass.myProperty;
  SomeClass.myMethod();
}

void staticVariables() {
  final mySingleton = MySingleton();
}

void staticMethods() {
  final map = {'id': 10, 'name': 'Sandra'};
  final sandra = User.fromJson(map);
  print(sandra);
}

class Address {
  Address();
  var value = '';
}

class MyClass {
  var myProperty = 1;
}

// class Email {
//   var _address = '';

//   String get value => _address;
//   set value(String address) => _address = address;
// }

class Email {
  Email(this.value);
  final String value;
}

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
}

class MySingleton {
  MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;
}
