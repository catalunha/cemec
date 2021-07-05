import 'dart:convert';

import 'package:cemec/firebase/firestore_model.dart';

class UserModel extends FirestoreModel {
  static final String collection = 'users';
  String? setor;
  UserModel(
    String id, {
    this.setor,
  }) : super(id);

  UserModel copyWith({
    String? setor,
  }) {
    return UserModel(
      this.id,
      setor: setor ?? this.setor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'setor': setor,
    };
  }

  factory UserModel.fromMap(String id, Map<String, dynamic> map) {
    return UserModel(
      id,
      setor: map['setor'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String id, String source) =>
      UserModel.fromMap(id, json.decode(source));

  @override
  String toString() => 'UserModel(setor: $setor)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel && other.setor == setor;
  }

  @override
  int get hashCode => setor.hashCode;
}
