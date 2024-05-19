import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';
import '../../../user/user.dart';
import '../../education.dart';

part 'get_question_info_response.mapper.dart';

@MappableClass()
class GetQuestionInfoResponse with GetQuestionInfoResponseMappable {
  const GetQuestionInfoResponse({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.answerTime,
    this.content,
    this.price,
    this.status,
    this.isPaid,
    this.type,
    this.fileQuestions,
    this.student,
    this.subject,
    this.answers,
  });
  factory GetQuestionInfoResponse.fromJson(Map<String, dynamic> json) =>
      GetQuestionInfoResponseMapper.fromJson(json);

  final String? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? answerTime;
  final String? content;
  final String? price;
  final int? status;
  final bool? isPaid;
  final int? type;
  final FileResponse? fileQuestions;
  final UserInfoResponse? student;
  final SubjectResponse? subject;
  final dynamic answers;
}
