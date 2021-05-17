import 'package:coho/Screens/AddPatient.dart';
import 'package:flutter/material.dart';

import 'ViewPatient.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePage({this.title});

  String title;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {

                      //Route to PatientDetails.dart

                      Navigator.push(context, MaterialPageRoute(builder: (_) => AddPatient()));


                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 55, 50),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Add Patient",
                              style: Theme.of(context).textTheme.headline4.copyWith(
                                    color: Colors.blue,
                                  ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "New patients can be registered here.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            // Divider(height: 20,
                            // thickness: 2,),
                            //Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,))
                          ],
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 5,
                        side: BorderSide(color: Colors.blue, width: 2, style: BorderStyle.solid),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPrimary: Colors.lightBlueAccent),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 55, 50),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Check Vitals",
                              style: Theme.of(context).textTheme.headline4.copyWith(
                                    color: Colors.blue,
                                  ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Add existing patients vitals to the record. Patient SpO2, blood pressure, temperature, respiratory rate, pulse can be added here.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            // Divider(height: 20,
                            // thickness: 2,),
                            //Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,))
                          ],
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 5,
                        side: BorderSide(color: Colors.blue, width: 2, style: BorderStyle.solid),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPrimary: Colors.lightBlueAccent),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (_) => ViewPatient()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 55, 50),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "View Patient",
                              style: Theme.of(context).textTheme.headline4.copyWith(
                                    color: Colors.blue,
                                  ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Patient condition, details, records can be viewed here.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            // Divider(height: 20,
                            // thickness: 2,),
                            //Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,))
                          ],
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 5,
                        side: BorderSide(color: Colors.blue, width: 2, style: BorderStyle.solid),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPrimary: Colors.lightBlueAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
