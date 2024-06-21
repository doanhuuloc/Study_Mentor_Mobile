import 'package:dart_mappable/dart_mappable.dart';

part 'canel_find_system_question_request.mapper.dart';

@MappableClass()
class CancelFindSystemQuestionRequest
    with CancelFindSystemQuestionRequestMappable {
  const CancelFindSystemQuestionRequest({required this.questionId});

  final String questionId;
}
