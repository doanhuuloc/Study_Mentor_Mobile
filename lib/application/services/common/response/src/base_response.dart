import 'package:dart_mappable/dart_mappable.dart';

part 'base_response.mapper.dart';

@MappableClass()
class BaseResponse<T> with BaseResponseMappable<T> {
  const BaseResponse({
    this.success,
    this.message,
    required this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      BaseResponseMapper.fromJson(json);

  final bool? success;
  final String? message;
  final T data;
}
