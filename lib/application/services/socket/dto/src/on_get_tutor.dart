import 'package:dart_mappable/dart_mappable.dart';

part 'on_get_tutor.mapper.dart';

@MappableClass()
class OnGetTutor with OnGetTutorMappable {
  const OnGetTutor({
    this.data,
    this.pageSize,
    this.total,
    this.previousPage,
    this.nextPage,
    this.totalPages,
  });

  factory OnGetTutor.fromJson(Map<String, dynamic> json) =>
      OnGetTutorMapper.fromJson(json);

  final List<Tutor>? data;
  final int? pageSize;
  final int? total;
  final int? previousPage;
  final int? nextPage;
  final int? totalPages;
}

@MappableClass()
class Tutor with TutorMappable {
  const Tutor({
    this.id,
    this.fullName,
    this.age,
    this.avatar,
    this.averageRate,
  });

  factory Tutor.fromJson(Map<String, dynamic> json) =>
      TutorMapper.fromJson(json);

  final String? id;
  final String? fullName;
  final int? age;
  final String? avatar;
  final int? averageRate;
}
