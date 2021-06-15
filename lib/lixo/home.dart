// import 'package:cemec/google_signin_provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Home extends StatelessWidget {
//   final user = FirebaseAuth.instance.currentUser!;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bem vindo ao CEMEC'),
//         centerTitle: true,
//         actions: [
//           TextButton(
//             onPressed: () {
//               final provider =
//                   Provider.of<GoogleSignInProvider>(context, listen: false);
//               provider.logout();
//             },
//             child: Text(
//               'Sair',
//               style: TextStyle(color: Colors.white, fontSize: 12),
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         color: Colors.blueGrey.shade900,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Sua conta',
//               style: TextStyle(color: Colors.white, fontSize: 34),
//             ),
//             SizedBox(height: 32),
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: NetworkImage(user.photoURL!),
//             ),
//             SizedBox(height: 8),
//             Text(
//               "phoneNumber: ${user.phoneNumber ?? '...'}",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             SizedBox(height: 8),
//             Text(
//               "displayName: ${user.displayName ?? '...'}",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               "email: ${user.email ?? '...'}",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               "uid: ${user.uid}",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               "providerData: ${user.providerData.toString()}",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
