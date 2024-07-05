import 'package:dart_mappable/dart_mappable.dart';

part 'pagination_response.mapper.dart';

@MappableClass()
class PaginationResponse with PaginationResponseMappable {
  const PaginationResponse({
    this.page,
    this.pageSize,
    this.total,
    this.totalPages,
  });

  factory PaginationResponse.fromJson(Map<String, dynamic> json) =>
      PaginationResponseMapper.fromJson(json);

  final int? page;
  final int? pageSize;
  final int? total;
  final int? totalPages;
}
