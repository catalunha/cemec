import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback signOut;
  final String userPhotoUrl;
  final String userPhoneNumber;
  final String userDisplayName;
  final String userEmail;
  final String userUid;
  const HomePage({
    Key? key,
    required this.signOut,
    required this.userPhotoUrl,
    required this.userPhoneNumber,
    required this.userDisplayName,
    required this.userEmail,
    required this.userUid,
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
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sua conta',
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            SizedBox(height: 32),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(userPhotoUrl),
            ),
            SizedBox(height: 8),
            Text(
              "phoneNumber: $userPhoneNumber",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            SizedBox(height: 8),
            Text(
              "displayName: $userDisplayName",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "email: $userEmail",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "uid: $userUid",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
