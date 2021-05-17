import 'package:coho/Screens/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      routes: {
        //'/': (context) => MyHomePage(),
        // '/ProfilePerson': (context) => ProfilePerson(),
      },
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5,fontFamily: 'Poppins'),
          headline2: TextStyle(fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5,fontFamily: 'Poppins'),
          headline3: TextStyle(fontSize: 46, fontWeight: FontWeight.w400,fontFamily: 'Poppins'),
          headline4: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, letterSpacing: 0.25,),
          headline5: TextStyle(fontSize: 23, fontWeight: FontWeight.w400,fontFamily: 'Poppins'),
          headline6: TextStyle(fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15,fontFamily: 'Poppins'),
          subtitle1: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15,fontFamily: 'Poppins'),
          subtitle2: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1,fontFamily: 'Poppins'),
          bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5,fontFamily: 'Poppins'),
          bodyText2: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.25,fontFamily: 'Poppins'),
          button: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25,fontFamily: 'Poppins'),
          caption: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4,fontFamily: 'Poppins'),
          overline: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5,fontFamily: 'Poppins'),
        ),
        primarySwatch: Colors.blue,
      ),
       home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
