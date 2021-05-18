import 'package:coho/Models/Patient.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewPatient extends StatefulWidget {
  @override
  _ViewPatientState createState() => _ViewPatientState();
}

class _ViewPatientState extends State<ViewPatient> {
  // List<String> bedno = ["134", "100", "201", "302", "123"];
  // List<String> name = ["Ken ADAMS", "ADAMS", "BITCH", "DRAGON", "BLAH"];
  List<String> status = [
    "critical",
    "normal",
    "normal",
    "normal",
    "critical"
  ]; // NORMAL OR CRITICAL

  @override
  Widget build(BuildContext context) {
    var patients = Provider.of<List<Patient>>(context).toList();

    return Scaffold(
      body: ListView.builder(
          itemCount: patients.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(patients[index].bedNo), // BED NUMBER
              title: Text(patients[index].name), //NAME OF PATIENT
              trailing: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: patients[index].critical == "Yes"
                          ? Colors.red
                          : Colors.green[400],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    status[index],
                    style: TextStyle(color: Colors.white),
                  )),
            );
          }),
    );
  }
}
