import 'package:flutter/material.dart';
import 'package:seed_funding/Login.dart';
import 'package:seed_funding/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:seed_funding/user_profile.dart';

// void main() {

//   runApp(MyApp());
// }
//==========> this is used for initialization of firestore <==============
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// ================> Close<==============

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Index(),
    );
  }
}
