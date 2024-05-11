import 'package:dio/dio.dart';

import '../../config/config.dart';
import '../DioInterceptorManager.dart';

class TutorApi {
  static final _dioInterceptorManager = DioInterceptorManager();
  static final Dio _dio = _dioInterceptorManager.dioInstance;
  static Future<Map<String, dynamic>> getTutorOnline() async {
    try {
      Response response =
          await _dio.get('${Config.api_url}users/tutors-online');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> getTutorOnlineFLF() async {
    try {
      Response response =
          await _dio.get('${Config.api_url}users/tutors-online/favorite');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> getTutorEducationInterest(
      String id) async {
    try {
      Response response = await _dio
          .get("${Config.api_url}users/$id/profile/education-interest");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
