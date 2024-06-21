import 'package:dart_mappable/dart_mappable.dart';
import 'package:study_mentor_mobile/application/services/file/request/request.dart';

part 'report_tutor_request.mapper.dart';

@MappableClass()
class ReportTutorRequest with ReportTutorRequestMappable {
  const ReportTutorRequest({
    required this.questionId,
    required this.tutorId,
    required this.studentId,
    required this.content,
    this.attachFiles,
  });

  factory ReportTutorRequest.fromJson(Map<String, dynamic> json) =>
      ReportTutorRequestMapper.fromJson(json);

  final String questionId;
  final String tutorId;
  final String studentId;
  final String content;
  final List<FileRequest>? attachFiles;
}
