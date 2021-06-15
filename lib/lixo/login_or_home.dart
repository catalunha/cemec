// import 'package:cemec/home.dart';
// import 'package:cemec/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class LoginOrHome extends StatelessWidget {
//   const LoginOrHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasData) {
//             return Home();
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Something went Wrong !'),
//             );
//           } else {
//             return Login();
//           }
//         },
//       ),
//     );
//   }
// }
