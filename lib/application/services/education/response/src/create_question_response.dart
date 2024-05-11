import 'package:dart_mappable/dart_mappable.dart';

part 'create_question_response.mapper.dart';

@MappableClass()
class CreateQuestionResponse with CreateQuestionResponseMappable {
  const CreateQuestionResponse({this.price, this.questionId});
  factory CreateQuestionResponse.fromJson(Map<String, dynamic> json) =>
      CreateQuestionResponseMapper.fromJson(json);

  final double? price;
  final String? questionId;
}
