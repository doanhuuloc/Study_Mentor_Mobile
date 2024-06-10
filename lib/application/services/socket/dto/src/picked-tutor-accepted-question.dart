import 'package:dart_mappable/dart_mappable.dart';

part 'picked-tutor-accepted-question.mapper.dart';

@MappableClass()
class PickedTutorAcceptedQuestion with PickedTutorAcceptedQuestionMappable {
  const PickedTutorAcceptedQuestion({this.data});

  factory PickedTutorAcceptedQuestion.fromJson(Map<String, dynamic> json) =>
      PickedTutorAcceptedQuestionMapper.fromJson(json);
  final DataPickedTutorAcceptedQuestion? data;
}

@MappableClass()
class DataPickedTutorAcceptedQuestion
    with DataPickedTutorAcceptedQuestionMappable {
  const DataPickedTutorAcceptedQuestion({this.isAccepted});

  factory DataPickedTutorAcceptedQuestion.fromJson(Map<String, dynamic> json) =>
      DataPickedTutorAcceptedQuestionMapper.fromJson(json);
  final int? isAccepted;
}
