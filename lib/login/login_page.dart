import 'package:cemec/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  final StatusFirebaseAuth statusFirebaseAuth;
  final VoidCallback signIn;
  const LoginPage({
    Key? key,
    required this.statusFirebaseAuth,
    required this.signIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acessar ao CEMEC'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black54,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: signIn,
                icon: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                  size: 34,
                ),
                label: Text(
                  'Entrar com Google',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
