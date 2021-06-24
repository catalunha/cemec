import 'package:flutter/foundation.dart';

import 'package:cemec/user/user_model.dart';

class UserState {
  final UserModel? userCurrent;
  final List<UserModel> userList;

  UserState({
    required this.userCurrent,
    required this.userList,
  });

  factory UserState.initialState() => UserState(
        userCurrent: null,
        userList: [],
      );
  UserState copy({
    UserModel? userCurrent,
    List<UserModel>? userList,
  }) =>
      UserState(
        userCurrent: userCurrent ?? this.userCurrent,
        userList: userList ?? this.userList,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserState &&
        listEquals(other.userList, userList) &&
        other.userCurrent == userCurrent;
  }

  @override
  int get hashCode => userList.hashCode ^ userCurrent.hashCode;
}
