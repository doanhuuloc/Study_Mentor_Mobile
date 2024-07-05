import 'package:dart_mappable/dart_mappable.dart';

part 'get_report_question_request.mapper.dart';

@MappableClass()
class GetReportQuestionRequest with GetReportQuestionRequestMappable {
  const GetReportQuestionRequest({
    required this.reportId,
  });

  factory GetReportQuestionRequest.fromJson(Map<String, dynamic> json) =>
      GetReportQuestionRequestMapper.fromJson(json);
  final String reportId;
}
