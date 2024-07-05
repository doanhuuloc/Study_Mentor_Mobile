import 'package:dart_mappable/dart_mappable.dart';

import 'pagination_response.dart';

part 'base_response.mapper.dart';

@MappableClass()
class BaseResponse<T> with BaseResponseMappable<T> {
  const BaseResponse({
    this.success,
    this.message,
    required this.data,
    this.paginationInfo,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      BaseResponseMapper.fromJson(json);

  final bool? success;
  final String? message;
  final T data;
  final PaginationResponse? paginationInfo;
}
