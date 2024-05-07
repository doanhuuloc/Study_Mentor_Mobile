import 'dart:io';

import 'package:dio/dio.dart';

import '../../config/config.dart';
import '../DioInterceptorManager.dart';

class UploadFileApi {
  static final _dioInterceptorManager = DioInterceptorManager();
  static final Dio _dio = _dioInterceptorManager.dioInstance;
  static Future<Map<String, dynamic>> signedUrl(
      String fileName, String token) async {
    try {
      Response response = await _dio.get('${Config.api_url}files/signed-url',
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> updateFile(File file, String url) async {
    try {
      Response response = await _dio.put(url, data: file);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
