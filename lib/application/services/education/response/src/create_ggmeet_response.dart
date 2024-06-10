import 'package:dart_mappable/dart_mappable.dart';

part 'create_ggmeet_response.mapper.dart';

@MappableClass()
class CreateGGMeetResponse with CreateGGMeetResponseMappable {
  const CreateGGMeetResponse({
    this.meetingUrl,
    // this.createdAt,
  });

  factory CreateGGMeetResponse.fromJson(Map<String, dynamic> json) =>
      CreateGGMeetResponseMapper.fromJson(json);
  final String? meetingUrl;
  // final DateTime? createdAt;
}
