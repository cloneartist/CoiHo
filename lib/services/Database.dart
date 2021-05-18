import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coho/Models/Patient.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

// user
class DatabaseService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Patient>> gePatientDeets() {
    return _db
        .collection("Patient")
        .orderBy("bedNo", descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((documents) => Patient.fromJson(documents.data()))
            .toList());
  }

  Future<void> addPatients(
      {String opNumber,
      String name,
      String age,
      String phoneNumber,
      String bedNo}) {
    Map<String, String> newPatient = {
      "Name": name,
      "age": age,
      "opNo": opNumber,
      "bedNo": bedNo,
    };
    String sheetUrl =
        'https://script.google.com/macros/s/AKfycbyEzCqm6rZT1WhZAIiuZyyHy1xFbcH5hEqGnCSxU9M/dev?type=newPatient&opNumber=$opNumber&name=$name&age=$age&bedNo=$bedNo&phoneNumber=$phoneNumber';
    try {
      http.get(Uri.parse(sheetUrl));
    } catch (e) {
      print('add patient url launcher exception: ' + e);
    }
    CollectionReference patRef =
        FirebaseFirestore.instance.collection('Patient');
    return patRef
        .doc(opNumber)
        .set(newPatient)
        .then((value) => {
              print("Pt collection updated"),
            })
        .catchError((onError) =>
            {print("\n\n\n\terror : \n\n\n${onError.toString()}")});
  }
}
