import 'package:dart_mappable/dart_mappable.dart';

import '../../../file/request/request.dart';

part 'create_question_request.mapper.dart';

@MappableClass()
class CreateQuestionRequest with CreateQuestionRequestMappable {
  const CreateQuestionRequest({
    required this.subjectId,
    required this.numberOfStar,
    required this.timeFindTutor,
    required this.content,
    required this.attachFiles,
    this.voucherCode,
    this.timeMeeting,
  });

  final String subjectId;
  final int numberOfStar;
  final int timeFindTutor;
  final String content;
  final String? voucherCode;
  final List<FileRequest> attachFiles;
  final int? timeMeeting;
}
