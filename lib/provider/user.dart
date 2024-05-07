import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/services/education/education_api.dart';

class UserModel {
  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.accessToken,
    required this.refreshToken,
    this.avatar,
    this.phone,
    this.dateOfBirth,
    required this.gender,
  });

  String id;
  String fullName;
  String email;
  String? phone;
  String? dateOfBirth;
  String? avatar;
  String gender;
  String accessToken;
  String refreshToken;
}

class UserViewModel with ChangeNotifier {
  late final UserModel _user;

  UserModel get user => _user;
  CreateQuestionRequest? currentQuestion;

  initData(Map<String, dynamic> data) {
    _user = UserModel(
        id: data["user"]["id"],
        fullName: data["user"]["fullName"],
        email: data["user"]["email"],
        phone: data["user"]["phone"],
        dateOfBirth: data["user"]["dateOfBirth"],
        gender: (data["user"]["gender"] == 0 ? "male" : "female"),
        accessToken: data["accessToken"],
        refreshToken: data["refreshToken"]);
  }

  updateAvatar(String path) {
    _user.avatar = path;
    notifyListeners();
  }
}
