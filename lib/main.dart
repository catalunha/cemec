import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/routes.dart';

late Store<AppState> store;
final navigatorKey = GlobalKey<NavigatorState>();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  store = Store<AppState>(initialState: AppState.initialState());
  NavigateAction.setNavigatorKey(navigatorKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'CEMEC',
        theme: ThemeData.dark(),
        navigatorKey: navigatorKey,
        routes: Routes.routes,
        initialRoute: '/',
      ),
    );
  }
}
