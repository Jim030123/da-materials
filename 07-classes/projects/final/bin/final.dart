// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

import 'user.dart';

void main() {
  final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  const user = User(id: 42, name: 'Ray');
  const anonymousUser = User.anonymous();
  print(vicki);
  print(user);
  print(anonymousUser);

  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty);
  anotherObject.myProperty = 2;
  print(myObject.myProperty);

  const ray = User(id: 42, name: 'Ray');
  print(ray.id);
  print(ray.name);

  final email = Email('ray@example.com');
  final emailString = email.value;
  print(emailString);

  final value = SomeClass.myProperty;
  SomeClass.myMethod();

  final mySingleton = MySingleton();
}

class Address {
  Address();
  var value = '';
}

class MyClass {
  var myProperty = 1;
}

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
