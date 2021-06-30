import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/home/home_connector.dart';
import 'package:cemec/login/login_actions.dart';
import 'package:cemec/login/login_connector.dart';
import 'package:cemec/login/login_state.dart';
import 'package:cemec/splash/splash_page.dart';
import 'package:flutter/material.dart';

class SplashConnector extends StatelessWidget {
  const SplashConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SplashViewModel>(
        vm: () => SplashViewModelFactory(this),
        builder: (context, vm) {
          return SplashPage();
        });
  }
}

class SplashViewModelFactory extends VmFactory<AppState, SplashConnector> {
  SplashViewModelFactory(widget) : super(widget);

  @override
  SplashViewModel fromStore() {
    dispatch(CheckLoginAction());
    return SplashViewModel();
  }
}

class SplashViewModel extends Vm {
  SplashViewModel() : super();
}
