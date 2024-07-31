import 'package:dart_mappable/dart_mappable.dart';

part 'receive_ggmeet.mapper.dart';

@MappableClass()
class ReceiveGGMeet with ReceiveGGMeetMappable {
  const ReceiveGGMeet({
    this.meetingUrl,
    this.meeting_end_time,
    this.meeting_start_time,
  });

  factory ReceiveGGMeet.fromJson(Map<String, dynamic> json) =>
      ReceiveGGMeetMapper.fromJson(json);

  final String? meetingUrl;
  final DateTime? meeting_start_time;
  final DateTime? meeting_end_time;
}
