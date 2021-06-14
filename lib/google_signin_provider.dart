import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  Future googleLogin() async {
    try {
      print('GoogleSignInProvider: 1');
      final googleUser = await googleSignIn.signIn();
      print('GoogleSignInProvider: 2');
      if (googleUser == null) return;
      _user = googleUser;
      print('GoogleSignInProvider: 3');
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      print('GoogleSignInProvider: 4');
    } catch (e) {
      print('+++ Erro +++');
      print(e.toString());
      print('--- Erro ---');
    }
    notifyListeners();
  }

  Future logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
