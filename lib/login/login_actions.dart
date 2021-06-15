import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/login/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInLoginAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    if (state.loginState.statusFirebaseAuth ==
        StatusFirebaseAuth.authenticated) {
      return state;
    }
    var google = GoogleSignInOrSignOut();
    bool done = await google.googleLogin();
    if (done) {
      return state.copy(
        loginState: state.loginState.copy(
          statusFirebaseAuth: StatusFirebaseAuth.authenticated,
        ),
      );
    }
    return state;
  }
}

class SignOutLoginAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    var google = GoogleSignInOrSignOut();
    await google.googleLogout();

    return state.copy(
      loginState: state.loginState.copy(
        statusFirebaseAuth: StatusFirebaseAuth.unAuthenticated,
      ),
    );
  }
}

class GoogleSignInOrSignOut {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  Future<bool> googleLogin() async {
    try {
      print('GoogleSignInProvider: 1');
      final googleUser = await googleSignIn.signIn();
      print('GoogleSignInProvider: 2');
      if (googleUser == null) return true;
      _user = googleUser;
      print('GoogleSignInProvider: 3');
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        return false;
      } else {
        return true;
      }
    } catch (e) {
      print('+++ Erro googleLogin +++');
      print(e.toString());
      print('--- Erro googleLogin ---');
      return false;
    }
  }

  Future<bool> googleLogout() async {
    await googleSignIn.disconnect();
    await FirebaseAuth.instance.signOut();
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return true;
    } else {
      return false;
    }
  }
}
