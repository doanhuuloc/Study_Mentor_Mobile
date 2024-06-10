import 'package:dart_mappable/dart_mappable.dart';

part 'create_ggmeet_request.mapper.dart';

@MappableClass()
class CreateGGMeetRequest with CreateGGMeetRequestMappable {
  const CreateGGMeetRequest({
    // this.studentId,
    this.tutorId,
    this.questionId,
  });

  factory CreateGGMeetRequest.fromJson(Map<String, dynamic> json) =>
      CreateGGMeetRequestMapper.fromJson(json);
  // final String? studentId;
  final String? tutorId;
  final String? questionId;
}
