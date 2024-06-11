import 'package:dart_mappable/dart_mappable.dart';
import 'package:study_mentor_mobile/application/services/file/file.dart';

part 'get_answer.mapper.dart';

@MappableClass()
class GetAnswer with GetAnswerMappable {
  const GetAnswer({this.data});

  factory GetAnswer.fromJson(Map<String, dynamic> json) =>
      GetAnswerMapper.fromJson(json);
  final DataGetAnswer? data;
}

@MappableClass()
class DataGetAnswer with DataGetAnswerMappable {
  const DataGetAnswer({this.answer});

  factory DataGetAnswer.fromJson(Map<String, dynamic> json) =>
      DataGetAnswerMapper.fromJson(json);
  final Answer? answer;
}

@MappableClass()
class Answer with AnswerMappable {
  const Answer({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.content,
    this.fileAttachmentAnswers,
  });

  factory Answer.fromJson(Map<String, dynamic> json) =>
      AnswerMapper.fromJson(json);

  final String? id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? content;
  final List<FileResponse>? fileAttachmentAnswers;
}
