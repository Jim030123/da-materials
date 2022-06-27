// The code below is for research only, not to be published. It has its own
// copyright at the following links.

import 'dart:math';

//

void main() {
  print(Day.monday.index);
  // officialAnnouncement();
  // dartApprentice11();
  // josephMuller();
  // creativeCreatorOrMaybeNot();
  // codeWithAndrea();
  // featureSpecs();
  // singleton();
  // statePattern();
  // testing();
}

// enum Text {
//   one, two
// }

// https://medium.com/dartlang/dart-2-17-b216bfc80c5d
void officialAnnouncement() {
  print(Water.boiling.name);
  print(Water.boiling.tempInFahrenheit);
  print(Water.boiling.index);
  print(Water.boiling.toString());
}

enum Water {
  frozen(32),
  lukewarm(100),
  boiling(212);

  final int tempInFahrenheit;
  const Water(this.tempInFahrenheit);

  @override
  String toString() => "The $name water is $tempInFahrenheit F.";
}

// Dart Apprentice v1.1 example
void dartApprentice11() {
  final language = ProgrammingLanguage.dart;
  print(language.isStronglyTyped);
}

enum ProgrammingLanguage {
  dart(true),
  swift(true),
  javaScript(false);

  final bool isStronglyTyped;
  const ProgrammingLanguage(this.isStronglyTyped);
}

// https://jtmuller5-98869.medium.com/enhanced-enums-in-flutter-3-c6b6b4716e43
void josephMuller() {
  final metric = Metric.bodyFatPercentage;
  print(metric.type);
  print(metric);

  final endpoint = Endpoint.contact;
  print(endpoint.url);
  print(endpoint.apiVersion);

  for (final feature in Feature.values) {
    print(feature.displayName);
    print(feature.description);
    print('---');
  }
}

enum Metric {
  weight('weight'),
  height('size'),
  bodyFatPercentage('percent'),
  neck('size'),
  chest('size');

  const Metric(this.type);
  final String type;
}

enum Endpoint {
  posts('https://example.com/posts', 1),
  contact('https://example.com/contact', 1),
  about('https://example.com/about', 1);

  final String url;
  final int apiVersion;
  const Endpoint(this.url, this.apiVersion);
}

enum SocialProfiles {
  twitter('Twitter', 'https://twitter.com/', 'Twitter'),
  facebook('Facebook', 'https://facebook.com/', 'Facebook'),
  github('GitHub', 'https://github.com/', 'GitHub');

  final String platformName;
  final String urlPrefix;
  final String tooltip;

  const SocialProfiles(this.platformName, this.urlPrefix, this.tooltip);
}

enum Feature {
  noAds('No Ads', 'You won\'t see any ads.', '/image/no_ads.png'),
  unlimitedAccess(
      'Unlimited Access', 'You get unlimited access.', '/image/access.png'),
  help('24/7 Help', 'You get help any time of the day.', '/image/help.png');

  final String displayName;
  final String description;
  final String imageAssetPath;

  const Feature(this.displayName, this.description, this.imageAssetPath);
}

// https://stackoverflow.com/a/71412047
void creativeCreatorOrMaybeNot() {
  const foo = Foo.one;
  print(foo.value);

  final cake = Cake.apple;
  print(cake.description);

  Bar bar = Bar.baz;
  print(bar.value);
  bar = Bar.name;
  print(bar.value);
  bar = Bar.number;
  print(bar.value);
}

enum Foo {
  one(1),
  two(2);

  const Foo(this.value);
  final num value;
}

enum Cake {
  cherry,
  apple,
  strawberry;

  String get description => '$name cake';
}

enum Bar<T extends Object> {
  number<int>(42),
  name<String>('creativecreatorormaybenot'),
  baz(true); // Note that type inference also works.

  const Bar(this.value);
  final T value;
}

mixin Foos {
  int get n;
}

abstract class Bars {
  void printNumber();
}

enum Baz with Foos implements Bars {
  one(1),
  two(2);

  const Baz(this.n);

  @override
  final int n;

  @override
  void printNumber() => print(n);
}

enum Foot {
  bar(42, description: 'The answer to life, the universe, and everything.'),
  baz(0, enabled: false, description: 'noop');

  const Foot(
    int number, {
    this.enabled = true,
    required this.description,
  }) : n = number;
  final int n;
  final bool enabled;
  final String description;
}

// https://codewithandrea.com/tips/enums-with-members-dart-2.17
void codeWithAndrea() {
  const exception = AuthException.wrongPassword;
  print(exception.message);
}

enum AuthException {
  invalidEmail('Invalid email'),
  emailAlreadyInUse('Email already in use'),
  weakPassword('Password is too weak'),
  wrongPassword('Wrong password');

  const AuthException(this.message);
  final String message;
}

enum StatusCode {
  badRequest(401, 'Bad request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not found'),
  internalServerError(500, 'Internal server error'),
  notImplemented(501, 'Not implemented');

  const StatusCode(this.code, this.description);
  final int code;
  final String description;

  @override
  String toString() => 'StatusCode($code, $description)';
}

// https://github.com/dart-lang/language/blob/master/accepted/future-releases/enhanced-enums/feature-specification.md
void featureSpecs() {}

enum Name { id1, id2, id3 }

// https://javarevisited.blogspot.com/2012/07/why-enum-singleton-are-better-in-java.html#axzz7XAlGwN1P

enum EasySingleton {
  instance;
}

void singleton() {
  final singleton = EasySingleton.instance;
}

//    https://stackoverflow.com/questions/2709593/why-would-an-enum-implement-an-interface

abstract class Operator {
  int apply(int a, int b);
}

// enum SimpleOperators implements Operator {
//   add((a, b) => a + b),
//   subtract;

//   const SimpleOperators(this._apply)

//   final int Function(int a, int b) _apply;

//   @override
//   int apply(int a, int b) {
//     return _apply(a, b);
//   }
// }

// https://mattcarroll.medium.com/my-thoughts-on-the-release-of-flutter-3-3544f36c9b85

void mattCarroll() {
  final state = AudioPlayerState.loading;
  state.play();
}

enum AudioPlayerState {
  uninitialized,
  ready,
  loading,
  playing,
  paused;

  void play() {
    // ...
  }

  void pause() {
    // ...
  }

  void seek(Duration timeStamp) {
    // ...
  }
}

// https://www.youtube.com/watch?v=MGEx35FjBuo&t=12s

void statePattern() {
  print('-------');
  final atmMachine = AtmMachine();
  atmMachine.insertCard();
  atmMachine.ejectCard();
  atmMachine.insertCard();
  atmMachine.insertPin(1234);
  atmMachine.requestCash(2000);
  atmMachine.insertCard();
  atmMachine.insertPin(1234);
}

abstract class AtmState {
  void insertCard();
  void ejectCard();
  void insertPin(int pin);
  void requestCash(int cashToWithdraw);
}
// enum AtmStateEnum {
//   hasCard,
//   noCard(),
//   hasPin(),
//   outOfMoney();

//   void insertCard(AtmMachine machine) {
//     switch (this.)
//   }

//   void ejectCard(AtmMachine machine) {}
//   void insertPin(AtmMachine machine, int pin) {}
//   void requestCash(AtmMachine machine, int cashToWithdraw) {}
// }

class AtmMachine {
  AtmMachine() {
    _hasCard = HasCard(this);
    _noCard = NoCard(this);
    _hasPin = HasPin(this);
    _outOfMoney = NoCash(this);

    atmState = _noCard;

    if (cashInMachine <= 0) {
      atmState = _outOfMoney;
    }
  }

  late AtmState _hasCard;
  late AtmState _noCard;
  late AtmState _hasPin;
  late AtmState _outOfMoney;

  late AtmState atmState;

  int cashInMachine = 2000;
  bool correctPinEntered = false;

  void setNewAtmState(AtmState value) {
    atmState = value;
  }

  void setCashInMachine(int value) {
    cashInMachine = value;
  }

  void insertCard() {
    atmState.insertCard();
  }

  void ejectCard() {
    atmState.ejectCard();
  }

  void requestCash(int amount) {
    atmState.requestCash(amount);
  }

  void insertPin(int pin) {
    atmState.insertPin(pin);
  }

  AtmState get hasCardState => _hasCard;
  AtmState get noCardState => _noCard;
  AtmState get hasPinState => _hasPin;
  AtmState get outOfMoneyState => _outOfMoney;
}

class HasCard implements AtmState {
  HasCard(this.atmMachine);
  final AtmMachine atmMachine;

  @override
  void ejectCard() {
    print('Card ejected');
    atmMachine.setNewAtmState(atmMachine.noCardState);
  }

  @override
  void insertCard() {
    print('You cannot enter more than one card.');
  }

  @override
  void insertPin(int pin) {
    if (pin == 1234) {
      print('Correct pin');
      atmMachine.correctPinEntered = true;
      atmMachine.setNewAtmState(atmMachine.hasPinState);
    } else {
      print('Wrong pin');
      atmMachine.correctPinEntered = false;
      print('Card ejected');
      atmMachine.setNewAtmState(atmMachine.noCardState);
    }
  }

  @override
  void requestCash(int cashToWithdraw) {
    print('Enter pin first');
  }
}

class NoCard implements AtmState {
  NoCard(this.atmMachine);
  final AtmMachine atmMachine;

  @override
  void ejectCard() {
    print('Please enter a card first.');
  }

  @override
  void insertCard() {
    print('Please enter a pin.');
    atmMachine.setNewAtmState(atmMachine.hasCardState);
  }

  @override
  void insertPin(int pin) {
    print('Please enter a card first.');
  }

  @override
  void requestCash(int cashToWithdraw) {
    print('Please enter a card first.');
  }
}

class HasPin implements AtmState {
  HasPin(this.atmMachine);
  final AtmMachine atmMachine;

  @override
  void ejectCard() {
    print('Card ejected');
    atmMachine.setNewAtmState(atmMachine.noCardState);
  }

  @override
  void insertCard() {
    print('You cannot enter more than one card.');
  }

  @override
  void insertPin(int pin) {
    print('Already entered pin');
  }

  @override
  void requestCash(int cashToWithdraw) {
    if (cashToWithdraw > atmMachine.cashInMachine) {
      print('There is not enough cash in this machine');
      ejectCard();
    } else {
      print('You got $cashToWithdraw dollars');
      atmMachine.setCashInMachine(atmMachine.cashInMachine - cashToWithdraw);
      ejectCard();
      if (atmMachine.cashInMachine <= 0) {
        atmMachine.setNewAtmState(atmMachine.outOfMoneyState);
      }
    }
  }
}

class NoCash implements AtmState {
  NoCash(this.atmMachine);
  final AtmMachine atmMachine;

  @override
  void ejectCard() {
    print('We do not have money');
  }

  @override
  void insertCard() {
    print('We do not have money');
  }

  @override
  void insertPin(int pin) {
    print('We do not have money');
  }

  @override
  void requestCash(int cashToWithdraw) {
    print('We do not have money');
  }
}

// other testing

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  Day get next {
    return this + 1;
  }

  Day operator +(int days) {
    final numberOfItems = Day.values.length;
    final index = (this.index + days) % numberOfItems;
    return Day.values[index];
  }
}

void testing() {
  var value = Day.monday;
  value++;
  print(value);
  value = value + 3;
  print(value);
  print(value.next);
  print(value.next);
  print(value.next);
}
