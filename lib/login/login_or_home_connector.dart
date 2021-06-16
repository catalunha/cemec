import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/home/home_connector.dart';
import 'package:cemec/login/login_connector.dart';
import 'package:cemec/login/login_state.dart';
import 'package:flutter/material.dart';

class LoginOrHomeConnector extends StatelessWidget {
  const LoginOrHomeConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginOrHomeViewModel>(
        vm: () => LoginOrHomeViewModelFactory(this),
        builder: (context, vm) {
          return vm.isLogged ? HomeConnector() : LoginConnector();
        });
  }
}

class LoginOrHomeViewModelFactory
    extends VmFactory<AppState, LoginOrHomeConnector> {
  LoginOrHomeViewModelFactory(widget) : super(widget);

  @override
  LoginOrHomeViewModel fromStore() => LoginOrHomeViewModel(
        isLogged: state.loginState.statusFirebaseAuth ==
                StatusFirebaseAuth.authenticated
            ? true
            : false,
      );
}

class LoginOrHomeViewModel extends Vm {
  final bool isLogged;

  LoginOrHomeViewModel({
    required this.isLogged,
  }) : super(equals: [
          isLogged,
        ]);
}
