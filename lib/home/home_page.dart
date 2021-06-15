import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback signOut;
  const HomePage({
    Key? key,
    required this.signOut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        actions: [
          TextButton(
            onPressed: signOut,
            child: Text('Sair'),
          )
        ],
      ),
      body: Center(
        child: Text('HomePage...'),
      ),
    );
  }
}
