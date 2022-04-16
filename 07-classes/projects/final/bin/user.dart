// Copyright (c) 2022 Razeware LLC
// For full license & permission details, see LICENSE.

class User {
  const User({
    this.id = _anonymousId,
    this.name = _anonymousName,
  });

  const User.anonymous() : this();

  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
