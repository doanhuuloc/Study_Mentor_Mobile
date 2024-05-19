import 'package:dart_mappable/dart_mappable.dart';

part 'emit_get_tutor.mapper.dart';

@MappableClass()
class EmitGetTutor with EmitGetTutorMappable {
  const EmitGetTutor({
    this.userId,
    this.subjectId,
    this.page,
    this.pageSize,
  });

  final String? userId;
  final String? subjectId;
  final int? page;
  final int? pageSize;
}
