import 'package:dart_mappable/dart_mappable.dart';

part 'get_structure_education_response.mapper.dart';

@MappableClass()
class LevelResponse with LevelResponseMappable {
  const LevelResponse({
    this.id,
    this.levelName,
    this.description,
    this.grades,
  });
  factory LevelResponse.fromJson(Map<String, dynamic> json) =>
      LevelResponseMapper.fromJson(json);
  final String? id;
  final String? levelName;
  final String? description;
  final List<GradeResponse>? grades;
}

@MappableClass()
class GradeResponse with GradeResponseMappable {
  const GradeResponse({
    this.id,
    this.gradeName,
    this.description,
    this.subjects,
  });
  factory GradeResponse.fromJson(Map<String, dynamic> json) =>
      GradeResponseMapper.fromJson(json);
  final String? id;
  final String? gradeName;
  final String? description;
  final List<SubjectResponse>? subjects;
}

@MappableClass()
class SubjectResponse with SubjectResponseMappable {
  const SubjectResponse({
    this.id,
    this.name,
    this.description,
  });
  factory SubjectResponse.fromJson(Map<String, dynamic> json) =>
      SubjectResponseMapper.fromJson(json);

  final String? id;
  final String? name;
  final String? description;
}
