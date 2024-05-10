import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart';
import 'package:study_mentor_mobile/services/base_response.dart';
import 'package:study_mentor_mobile/services/file/file_response.dart';

import '../../config/config.dart';
import '../DioInterceptorManager.dart';

class UploadFileApi {
  static final _dioInterceptorManager = DioInterceptorManager();
  static final Dio _dio = _dioInterceptorManager.dioInstance;
  static Future<BaseResponse<FileResponse>?> signedUrl(
      String fileName, String token) async {
    try {
      Response response = await _dio.post('${Config.api_url}files/signed-url',
          data: {'fileName': fileName},
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }));

      BaseResponse<FileResponse> fileResponse = BaseResponse<FileResponse>(
          data: FileResponse.fromJson(response.data['data']),
          success: response.data['success'],
          message: response.data['message']);
      return fileResponse;
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool?> updateFile(File file, String url) async {
    try {
      final mimeType = lookupMimeType(file.path) ?? 'application/octet-stream';

      await _dio.put(
        url,
        data: file.openRead(),
        options: Options(
          contentType: mimeType,
          headers: {
            'Content-Length': file.lengthSync(),
          },
        ),
      );
      await Future.delayed(const Duration(milliseconds: 100));
      return true;
    } catch (e) {
      return null;
    }
  }
}
