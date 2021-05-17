import 'package:flutter/material.dart';
import 'package:coho/services/Database.dart';

class AddPatient extends StatefulWidget {
  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  final _formKey = GlobalKey<FormState>();
  String name, age, opNumber, phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                        labelText: 'Patient Name(Mandatory)'),
                    validator: (value) =>
                        value.isEmpty ? "  Please enter name" : null,
                    onSaved: (value) => name = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: textInputDecoration.copyWith(
                        labelText: 'Age(Mandatory)'),
                    validator: (value) =>
                        value.isEmpty ? "  Please enter age" : null,
                    onSaved: (value) => age = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: textInputDecoration.copyWith(
                        labelText: 'OP Number(Optional)'),
                    // validator: (value) => value.isEmpty ? "  Please enter OP number" : null,
                    onSaved: (value) => opNumber = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: textInputDecoration.copyWith(
                        labelText: 'Phone Number(Optional)'),
                    // validator: (value) => value.isEmpty ? "  Please enter Phone Number" : null,
                    onSaved: (value) => phoneNumber = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        validateAndSave();
                      },
                      child: Text(
                        "Submit",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPrimary: Colors.lightBlueAccent,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();

      print('$name,$age,$phoneNumber,$opNumber');
      DatabaseService _db = new DatabaseService();
      _db.addPatients(opNumber = opNumber, age = age, name = name,
          phoneNumber = phoneNumber, bedNo = "21");
      return true;
    } else {
      print("Form invalid");
      return false;
    }
  }

  dynamic textInputDecoration = InputDecoration(
    labelStyle: TextStyle(
      color: Colors.blue,
    ),
    fillColor: Colors.white,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(width: 1, color: Colors.blue),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(width: 1, color: Colors.black),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(),
    ),
  );
}
