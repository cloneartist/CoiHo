import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool loading = false;
  bool screen = false;
  String email, password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: 40.0),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "M E M B E R    L O G I N",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      validator: (val) => val.isEmpty || !(val.contains('@'))
                          ? 'Enter a valid email address'
                          : null,
                      decoration: InputDecoration(labelText: 'Email'),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      validator: (val) => val.isEmpty || val.length < 6
                          ? 'Enter a password greater than 6 characters'
                          : null,
                      decoration: InputDecoration(labelText: 'Password'),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 20.0),
                    FlatButton.icon(
                      splashColor: Colors.orange,
                      icon: Icon(
                        Icons.login,
                        color: Colors.white,
                        size: 25,
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      onPressed: () async {
                        if (formKey.currentState.validate()) {
                          setState(() {
                            //loading = true;
                          });
                          try {
                            UserCredential user = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email, password: password);
                            print(user);
                            Navigator.pushNamed(context, '/home');
                          } catch (e) {
                            print(e.message);
                            String error = e.message.toString();

                            // Navigator.pushNamed(context, '/signup');
                            setState(() {
                              loading = false;
                              screen = true;
                            });
                            final loginerror = SnackBar(content: Text(error));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(loginerror);
                          }
                        }
                      },
                      label: Text(
                        "LogIn",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          //Navigator.pushNamed((context), '/signup');
                          setState(() {
                            screen = true;
                          });
                        },
                        child: Text("New User? Sign Up"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
