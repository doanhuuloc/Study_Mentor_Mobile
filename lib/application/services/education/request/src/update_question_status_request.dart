import 'package:dart_mappable/dart_mappable.dart';

part 'update_question_status_request.mapper.dart';

@MappableClass()
class UpdateQuestionStatusRequest with UpdateQuestionStatusRequestMappable {
  const UpdateQuestionStatusRequest(
      {required this.questionId, required this.status});

  final String questionId;
  final int status;
}
