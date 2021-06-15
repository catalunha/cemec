import 'package:flutter/foundation.dart';

import 'package:cemec/user/userModel.dart';

class UserState {
  final List<UserModel> userList;
  final UserModel? userCurrent;

  UserState({
    required this.userList,
    required this.userCurrent,
  });

  factory UserState.initialState() => UserState(
        userList: [],
        userCurrent: null,
      );
  UserState copy({
    List<UserModel>? userList,
    UserModel? userCurrent,
  }) =>
      UserState(
        userList: userList ?? this.userList,
        userCurrent: userCurrent ?? this.userCurrent,
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
