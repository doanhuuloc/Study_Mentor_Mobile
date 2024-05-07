import 'dart:io';

import 'package:dio/dio.dart';
import 'package:study_mentor_mobile/services/file/uploadFile.dart';

import '../../config/config.dart';
import '../DioInterceptorManager.dart';

class UpdateProfileRequest {
  const UpdateProfileRequest(
      {this.fullName, this.email, this.phone, this.dateOfBirth, this.gender});

  final String? fullName;
  final String? email;
  final String? phone;
  final String? dateOfBirth;
  final int? gender;

  Map<String, dynamic> map() {
    Map<String, dynamic> data = {};
    if (fullName != null && fullName != "") data.addAll({"fullName": fullName});
    if (email != null && email != "") data.addAll({"email": email});
    if (phone != null && phone != "") data.addAll({"phone": phone});

    if (dateOfBirth != null && dateOfBirth != "") {
      data.addAll({"dateOfBirth": dateOfBirth});
    }
    if (gender != null) data.addAll({"gender": gender});

    return data;
  }
}

class UserApi {
  static final _dioInterceptorManager = DioInterceptorManager();
  static final Dio _dio = _dioInterceptorManager.dioInstance;
  static Future<Map<String, dynamic>> getUserInfo(String token) async {
    try {
      Response response = await _dio.get('${Config.api_url}users/profile');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> updateUserProfile(
      UpdateProfileRequest data, String token) async {
    try {
      Response response = await _dio.patch('${Config.api_url}users/profile',
          data: data.map(),
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> updateUserAvatar(
      File file, String token) async {
    try {
      String fileName = file.path.split('/').last;

      final resSignedUrl = await UploadFileApi.signedUrl(fileName, token);
      final data = {
        "fileName": resSignedUrl["data"]["fileName"],
        "fileKey": resSignedUrl["data"]["fileKey"],
      };
      final resUploadFile =
          await UploadFileApi.updateFile(file, resSignedUrl["data"]["url"]);

      Response response =
          await _dio.patch('${Config.api_url}users/profile/avatar',
              data: data,
              options: Options(headers: {
                'Authorization': 'Bearer $token',
              }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> login(
      {required String email, required String password}) async {
    try {
      Response response = await _dio.post('${Config.api_url}users/login',
          data: {"email": email, "password": password});

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> signup(Map<String, dynamic> data) async {
    try {
      Response response =
          await _dio.post('${Config.api_url}users/register', data: data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
