import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coho/Models/Patient.dart';

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
      String opNumber, String name, String age, String phoneNumber) {
    Map<String, String> newPatient = {
      "Name": name,
      "age": age,
      "opNo": opNumber,
      "bedNo": "21",
    };
    CollectionReference patRef =
        FirebaseFirestore.instance.collection('Patient');
    return patRef
        .doc(opNumber)
        .set({opNumber: newPatient})
        .then((value) => {
              print("Pt collection updated"),
            })
        .catchError((onError) =>
            {print("\n\n\n\terror : \n\n\n${onError.toString()}")});
  }
}
