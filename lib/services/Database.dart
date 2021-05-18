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
        .map((snapshot) => snapshot.docs.map((documents) {
              print("\n\n\n\n\n\ndata ${documents.data()["age"]}");

              return Patient.fromJson(documents.data());
            }).toList());
  }

  Future<void> addNeTrack(List<Track> track, Track newVal) {
    track.add(newVal);
    CollectionReference patRef =
        FirebaseFirestore.instance.collection('Patient');
    return patRef.doc("asd").update({"track": track}).then((value) {
      print("\n\n\nnupdated yaaa");
    }).catchError(
        (onError) => print("\n\n\n error thrown ${onError.toString()}"));
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
    // String sheetUrl =
    //     'https://script.google.com/macros/s/AKfycbyEzCqm6rZT1WhZAIiuZyyHy1xFbcH5hEqGnCSxU9M/dev?type=newPatient&opNumber=$opNumber&name=$name&age=$age&bedNo=$bedNo&phoneNumber=$phoneNumber';
    // try {
    //   launch(sheetUrl);
    // } catch (e) {

    //   print(e);
    // }
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
