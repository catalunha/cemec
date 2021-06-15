import 'package:cemec/app_state.dart';
import 'package:cemec/login/login_actions.dart';
import 'package:cemec/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:cemec/login/login_state.dart';

class LoginConnector extends StatelessWidget {
  const LoginConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginViewModel>(
      vm: () => LoginViewModelFactory(this),
      builder: (context, vm) => LoginPage(
        signIn: vm.signIn,
        statusFirebaseAuth: vm.statusFirebaseAuth,
      ),
    );
  }
}

class LoginViewModelFactory extends VmFactory<AppState, LoginConnector> {
  LoginViewModelFactory(widget) : super(widget);
  @override
  LoginViewModel fromStore() => LoginViewModel(
        signIn: () => dispatch(SignInLoginAction()),
        statusFirebaseAuth: state.loginState.statusFirebaseAuth,
      );
}

class LoginViewModel extends Vm {
  final StatusFirebaseAuth statusFirebaseAuth;
  final VoidCallback signIn;

  LoginViewModel({
    required this.statusFirebaseAuth,
    required this.signIn,
  }) : super(equals: [statusFirebaseAuth]);
}
