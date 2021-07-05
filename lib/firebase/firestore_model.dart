abstract class FirestoreModel {
  static late final String collection;
  final String id;

  FirestoreModel(this.id);
  // factory UserModel.fromMap(String id, Map<String, dynamic> map);
  // factory UserModel.fromJson(String id, String source);
  FirestoreModel copyWith();
  // Map<String, dynamic> toData();
  Map<String, dynamic> toMap();
  String toJson();
  bool operator ==(Object other);
  int get hashCode;
  @override
  String toString() {
    return id + ':' + toMap().toString();
  }
}
