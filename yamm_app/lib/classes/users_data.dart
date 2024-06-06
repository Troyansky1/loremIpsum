import 'package:flutter/material.dart';

class UserData {
  String name;
  String email;

  UserData({required this.name, required this.email});
}

class UserDataModel extends ChangeNotifier {
  late UserData _userData;

  UserData get userData => _userData;

  void setUserData(String name, String email) {
    _userData = UserData(name: name, email: email);
    notifyListeners();
  }
}
