import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/request/request.dart';

part 'create_question_request.mapper.dart';

@MappableClass()
class CreateQuestionRequest with CreateQuestionRequestMappable {
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
  final List<FileRequest> attachFiles;
}
