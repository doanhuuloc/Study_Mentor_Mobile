import 'package:dart_mappable/dart_mappable.dart';
part 'pick_intrustor_request.mapper.dart';

@MappableClass()
class PickIntrustorRequest with PickIntrustorRequestMappable {
  const PickIntrustorRequest({
    required this.tutorId,
    required this.questionId,
  });

  final String tutorId;
  final String questionId;
}
