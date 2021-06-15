import 'package:cemec/repository.dart';

class UserModel extends FirestoreModel {
  static final String collection = 'users';
  String? setor;
  UserModel(
    String id, {
    this.setor,
  }) : super(id);

  @override
  UserModel fromMap(Map<String, dynamic> map) {
    if (map.containsKey('setor')) setor = map['setor'];
    return this;
  }

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (setor != null) data['setor'] = this.setor;
    return data;
  }
}
