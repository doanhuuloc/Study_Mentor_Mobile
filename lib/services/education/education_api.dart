import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

import '../../config/config.dart';
import '../DioInterceptorManager.dart';

class CreateQuestionRequest {
  const CreateQuestionRequest(
      {required this.userId,
      required this.subjectId,
      required this.timeAnswer,
      required this.content,
      required this.attachFiles});

  final String userId;
  final String subjectId;
  final int timeAnswer;
  final String content;
  final List<FilePickerResult> attachFiles;
}

class EducationApi {
  static final _dioInterceptorManager = DioInterceptorManager();
  static final Dio _dio = _dioInterceptorManager.dioInstance;
  static Future<Map<String, dynamic>> getStrutureEducation(String token) async {
    try {
      Response response =
          await _dio.get('${Config.api_url}questions/structure-educations',
              options: Options(headers: {
                'Authorization': 'Bearer $token',
              }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> createQuestion(
      CreateQuestionRequest req, String token) async {
    try {
      FormData data = FormData.fromMap({
        "userId": req.userId,
        "subjectId": req.subjectId,
        "timeAnswer": req.timeAnswer,
        "content": req.content,
        "attachFiles": req.attachFiles
            .map((e) async => await MultipartFile.fromFile(
                  e.files.single.path!,
                  filename: e.files.single.name,
                ))
            .toList()
      });
      Response response = await _dio.post('${Config.api_url}questions',
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }));
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
