import 'package:coho/Models/Patient.dart';
import 'package:flutter/material.dart';

class Selected with ChangeNotifier {
  Patient patient = Patient();
  String initialised = "Not";

  changeSelect(Patient pat) {
    print("from provider ${pat.name}");
    patient = pat;
    initialised = "aaa Yes";
    notifyListeners();
  }

  get getSelected {
    return patient;
  }

  Future<void> tMatches(String fromm) async {}
}
