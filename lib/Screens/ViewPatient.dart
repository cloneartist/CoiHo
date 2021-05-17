import 'package:flutter/material.dart';

class ViewPatient extends StatefulWidget {
  @override
  _ViewPatientState createState() => _ViewPatientState();
}

class _ViewPatientState extends State<ViewPatient> {



  List<String> bedno = ["134","100","201","302","123"];
  List<String> name = ["Ken ADAMS","ADAMS","BITCH","DRAGON","BLAH"];
  List<String> status = ["critical","normal","normal","normal","critical"]; // NORMAL OR CRITICAL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(bedno[index]),// BED NUMBER
              title: Text(name[index]), //NAME OF PATIENT
              trailing: Container(
                padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: status[index]=="critical"?Colors.red:Colors.green[400],border: Border.all(), borderRadius: BorderRadius.circular(20)),
                  child: Text(status[index],style: TextStyle(color: Colors.white),)),
            );
          }),
    );
  }
}
