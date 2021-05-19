import 'package:coho/Models/Patient.dart';
import 'package:coho/Models/Selected.dart';
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
    var selected = Provider.of<Selected>(context);
    var electedPatient = selected.getSelected;

    return Scaffold(
      body: ListView.builder(
          itemCount: patients.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              // subtitle: Consumer<Selected>(
              //   builder: (context, patient, child) => Stack(
              //     children: [
              //       // Use SomeExpensiveWidget here, without rebuilding every time.
              //       if (child != null) child,
              //       Text("Total price: ${patient.patient.name}"),
              //     ],
              //   ),
              //   // Build the expensive widget here.
              //   // child: Text("nothing?"),
              // ),

              onTap: () {
                print(
                    "\n\n\n\ current Patient sleected before tap ${electedPatient.name} ");
                print("\n\n\n\ntapped on patient ${patients[index].name}");
                selected.changeSelect(patients[index]);
                Navigator.pushNamed(context, '/viewrecord');

                print("\n\n\n\ changed selected to ${electedPatient.name} ");
              },
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
                    patients[index].critical == "Yes" ? "Critical" : "Normal",
                    style: TextStyle(color: Colors.white),
                  )),
            );
          }),
    );
  }
}
