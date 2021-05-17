import 'package:coho/Screens/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import 'Screens/Nurse.dart';
import 'Screens/login_screen.dart';

// import 'package:firebase_auth/firebase_auth.dart';
String auth;
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   // auth = await FirebaseAuth.instance.currentUser.toString() == "null"
//   //     ? "null"
//   //     : FirebaseAuth.instance.currentUser.uid;
//   // print("\n\n\nEntered\n\n\n\n\n");
//   runApp(MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // print("\n\n\nEntered\n\n\n\n\n");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DatabaseService _db = new DatabaseService();

    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/login': (context) => Login(),
        '/nurse': (context) => Nurse(),
        // '/ProfilePerson': (context) => ProfilePerson(),
      },
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
