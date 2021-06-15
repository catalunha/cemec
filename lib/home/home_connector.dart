import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/home/home_page.dart';
import 'package:cemec/login/login_actions.dart';
import 'package:flutter/material.dart';

class HomeConnector extends StatelessWidget {
  const HomeConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeViewModel>(
      vm: () => HomeViewModelFactory(this),
      builder: (context, vm) => HomePage(
        signOut: vm.signOut,
      ),
    );
  }
}

class HomeViewModelFactory extends VmFactory<AppState, HomeConnector> {
  HomeViewModelFactory(widget) : super(widget);
  @override
  HomeViewModel fromStore() => HomeViewModel(
        signOut: () => dispatch(SignOutLoginAction()),
      );
}

class HomeViewModel extends Vm {
  final VoidCallback signOut;

  HomeViewModel({
    required this.signOut,
  }) : super(equals: []);
}
