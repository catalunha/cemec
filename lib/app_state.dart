import 'package:async_redux/async_redux.dart';
import 'package:cemec/login/login_state.dart';

class AppState {
  final Wait wait;
  final LoginState loginState;

  AppState({
    required this.loginState,
    required this.wait,
  });

  static AppState initialState() => AppState(
        wait: Wait(),
        loginState: LoginState.initialState(),
      );

  AppState copy({
    Wait? wait,
    LoginState? loginState,
  }) =>
      AppState(
        loginState: loginState ?? this.loginState,
        wait: wait ?? this.wait,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppState &&
        wait == other.wait &&
        loginState == other.loginState &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => wait.hashCode ^ loginState.hashCode;
}
