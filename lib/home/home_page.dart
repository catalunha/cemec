import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback signOut;
  final String userPhotoUrl;
  final String userPhoneNumber;
  final String userDisplayName;
  final String userEmail;
  final String userUid;
  final String setor;
  const HomePage({
    Key? key,
    required this.signOut,
    required this.userPhotoUrl,
    required this.userPhoneNumber,
    required this.userDisplayName,
    required this.userEmail,
    required this.userUid,
    required this.setor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage CEMEC'),
        actions: [
          PopupMenuButton(
            tooltip:
                '$userPhoneNumber\n$userEmail\n$userDisplayName\n${userUid.substring(0, 7)}\n$setor',
            icon: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(userPhotoUrl),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            itemBuilder: (BuildContext buildContext) => [
              PopupMenuItem(
                child: TextButton(onPressed: null, child: Text('Perfil')),
                value: '/sair',
              ),
              PopupMenuItem(
                child: TextButton(onPressed: signOut, child: Text('Sair')),
                value: '/sair',
              )
            ],
            // onSelected: (value) {
            //   if (value == '/sair') {
            //     return signOut;
            //   }
            // },
          )

          // TextButton(onPressed: signOut, child: Text('Sair')),
          // GestureDetector(
          //   onTap: signOut,
          //   child: Tooltip(
          //     message:
          //         '$userPhoneNumber\n$userEmail\n$userDisplayName\n${userUid.substring(0, 7)}',
          //     child: CircleAvatar(
          //       radius: 25,
          //       backgroundColor: Colors.blue,
          //       child: CircleAvatar(
          //         radius: 23,
          //         backgroundImage: NetworkImage(userPhotoUrl),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      // body: Center(
      //   child: Text('Segue conteúdo aqui...'),
      // ),
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
            SizedBox(height: 8),
            Text(
              "setor: $setor",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
