import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coho/Models/Patient.dart';

// user
class DatabaseService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Patient>> geDateofMatche() {
    return _db
        .collection("Patient")
        .orderBy("bedNo", descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((documents) => Patient.fromJson(documents.data()))
            .toList());
  }
}
