import 'package:cemec/home.dart';
import 'package:cemec/login.dart';
import 'package:cemec/login_or_home.dart';
import 'package:flutter/material.dart';

class Routes {
  static final routes = {
    '/': (BuildContext context) => LoginOrHome(),
    '/login': (BuildContext context) => Login(),
    '/home': (BuildContext context) => Home(),
  };
}
