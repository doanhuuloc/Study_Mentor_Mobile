import 'package:dart_mappable/dart_mappable.dart';

part 'rate_question_request.mapper.dart';

@MappableClass()
class RateQuestionRequest with RateQuestionRequestMappable {
  const RateQuestionRequest({
    required this.tutorId,
    required this.comment,
    required this.numberOfStar,
  });

  final String tutorId;
  final String comment;
  final int numberOfStar;
}
