import 'package:dart_mappable/dart_mappable.dart';

part 'find_tutor_response.mapper.dart';

@MappableClass()
class FindTutorResponse with FindTutorResponseMappable {
  const FindTutorResponse({
    this.message,
  });
  factory FindTutorResponse.fromJson(Map<String, dynamic> json) =>
      FindTutorResponseMapper.fromJson(json);

  final String? message;
}
