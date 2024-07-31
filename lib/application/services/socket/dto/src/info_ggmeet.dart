import 'package:dart_mappable/dart_mappable.dart';

part 'info_ggmeet.mapper.dart';

@MappableClass()
class InfoGGMeet with InfoGGMeetMappable {
  const InfoGGMeet({
    this.studentId,
    this.tutorId,
    this.questionId,
    this.meeting_start_time,
    this.isStudent,
  });

  factory InfoGGMeet.fromJson(Map<String, dynamic> json) =>
      InfoGGMeetMapper.fromJson(json);

  final String? studentId;
  final String? tutorId;
  final String? questionId;
  final DateTime? meeting_start_time;
  final bool? isStudent;
}
