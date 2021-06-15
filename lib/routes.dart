import 'package:cemec/home/home_connector.dart';
import 'package:cemec/login/login_connector.dart';
import 'package:cemec/login/login_or_home_connector.dart';
import 'package:flutter/material.dart';

class Routes {
  static final routes = {
    '/': (BuildContext context) => LoginOrHomeConnector(),
    '/login': (BuildContext context) => LoginConnector(),
    '/home': (BuildContext context) => HomeConnector(),
  };
}
