import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/file.dart';
part 'report_question_response.mapper.dart';

@MappableClass()
class ReportQuestionResponse with ReportQuestionResponseMappable {
  const ReportQuestionResponse({
    this.id,
    this.questionName,
    this.studentId,
    this.content,
    this.attachFiles,
    this.createdAt,
    this.questionId,
    this.questionTitle,
    this.studentName,
  });

  factory ReportQuestionResponse.fromJson(Map<String, dynamic> json) =>
      ReportQuestionResponseMapper.fromJson(json);

  final String? id;
  final String? questionName;
  final String? studentName;
  final String? content;
  final String? studentId;
  final String? questionId;
  final String? questionTitle;
  final List<FileResponse>? attachFiles;
  final DateTime? createdAt;
}
