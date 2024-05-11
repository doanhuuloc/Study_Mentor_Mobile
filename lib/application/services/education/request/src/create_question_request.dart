import 'package:dart_mappable/dart_mappable.dart';

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

@MappableClass()
class FileRequest with FileRequestMappable {
  const FileRequest({
    required this.fileKey,
    required this.fileName,
  });
  final String fileKey;
  final String fileName;
}
