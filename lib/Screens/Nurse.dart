import 'package:flutter/material.dart';

class Nurse extends StatefulWidget {
  @override
  NurseState createState() {
    return NurseState();
  }
}

class NurseState extends State<Nurse> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController tecSPO2 = TextEditingController();
  final TextEditingController tecBP = TextEditingController();
  final TextEditingController tecTEMP = TextEditingController();
  final TextEditingController tecRESP = TextEditingController();
  final TextEditingController tecPULSE = TextEditingController();

  String _uid, _name, _age, _spo2, _bp, _temp, _resprate, _pulse;

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
// $_uid,$_name,$_age,
      print('$_spo2,$_bp,$_temp,$_resprate,$_pulse');
      
      return true;
    } else {
      print("Form invalid");
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Vitals"),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15,),
                //.
                //Bed No.
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 70,
                //     width: 350,
                //     child: TextFormField(
                //       decoration:
                //           textInputDecoration.copyWith(labelText: 'Bed No'),
                //       validator: (value) =>
                //           value.isEmpty ? "  Please Enter Bed No" : null,
                //       onSaved: (value) => _uid = value,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 70,
                //     width: 350,
                //     child: TextFormField(
                //       decoration: textInputDecoration.copyWith(labelText: 'Name'),
                //       validator: (value) =>
                //           value.isEmpty ? "  Please Enter Name" : null,
                //       onSaved: (value) => _uid = value,
                //     ),
                //   ),
                // ),

                // SizedBox(
                //   height: 20,
                // ),

                // //Age

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 70,
                //     width: 350,
                //     child: TextFormField(
                //       decoration: textInputDecoration.copyWith(labelText: 'Age'),
                //       validator: (value) =>
                //           value.isEmpty ? "  Please Enter Age" : null,
                //       onSaved: (value) => _uid = value,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),

                // //Sp02

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 280,
                          child: TextFormField(
                            controller: tecSPO2,
                            decoration:
                                textInputDecoration.copyWith(labelText: 'SpO2'),
                            validator: (value) =>
                                value.isEmpty ? "  Please Enter Sp02 Level" : null,
                            onSaved: (value) => _spo2 = value,
                          ),
                        ),
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                       child: SizedBox(
                         
                          width:  90,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPrimary: Colors.white,
                          ),
                              onPressed: () {
                                tecSPO2.text = "NORMAL";
                                
                              },
                              child: Text("Normal")),
                        ),
                     )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //BP

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 280,
                          child: TextFormField(
                            controller: tecBP,
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Blood Pressure'),
                            validator: (value) => value.isEmpty
                                ? "  Please Enter Blood Pressure"
                                : null,
                            onSaved: (value) => _bp = value,
                          ),
                        ),
                      ),
                    ),
                   Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                       child: SizedBox(
                         
                          width:  90,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPrimary: Colors.white,
                          ),
                              onPressed: () {
                                tecBP.text = "NORMAL";
                              },
                              child: Text("Normal")),
                        ),
                     )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //Temperature

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 280,
                          child: TextFormField(
                            controller: tecTEMP,
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Temperature'),
                            validator: (value) =>
                                value.isEmpty ? "  Please Enter Temperature" : null,
                            onSaved: (value) => _temp = value,
                          ),
                        ),
                      ),
                    ),
                  Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                       child: SizedBox(
                         
                          width:  90,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPrimary: Colors.white,
                          ),
                              onPressed: () {
                                tecTEMP.text = "NORMAL";
                              },
                              child: Text("Normal")),
                        ),
                     )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //Respiratory Rate

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 280,
                          child: TextFormField(
                            controller: tecRESP,
                            decoration: textInputDecoration.copyWith(
                                labelText: 'Respiratory Rate'),
                            validator: (value) => value.isEmpty
                                ? "  Please Enter Respiratory Rate"
                                : null,
                            onSaved: (value) => _resprate = value,
                          ),
                        ),
                      ),
                    ),
                   Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                       child: SizedBox(
                         
                          width:  90,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPrimary: Colors.white,
                          ),
                              onPressed: () {
                                tecRESP.text = "NORMAL";
                              },
                              child: Text("Normal")),
                        ),
                     )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //Pulse

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 280,
                          child: TextFormField(
                            controller: tecPULSE,
                            decoration:
                                textInputDecoration.copyWith(labelText: 'Pulse'),
                            validator: (value) =>
                                value.isEmpty ? "  Please Enter Pulse" : null,
                            onSaved: (value) => _pulse = value,
                          ),
                        ),
                      ),
                    ),
                   Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
                       child: SizedBox(
                         
                          width:  90,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPrimary: Colors.white,
                          ),
                              onPressed: () {
                                tecPULSE.text = "NORMAL";
                              },
                              child: Text("Normal")),
                        ),
                     )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                        minimumSize: Size(100, 50),
                        padding: EdgeInsets.fromLTRB(60, 20, 60, 20)),
                    onPressed: validateAndSave,
                    child: Text('Submit'),
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
