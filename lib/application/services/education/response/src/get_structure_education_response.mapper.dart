// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_structure_education_response.dart';

class LevelResponseMapper extends ClassMapperBase<LevelResponse> {
  LevelResponseMapper._();

  static LevelResponseMapper? _instance;
  static LevelResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LevelResponseMapper._());
      GradeResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LevelResponse';

  static String? _$id(LevelResponse v) => v.id;
  static const Field<LevelResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$levelName(LevelResponse v) => v.levelName;
  static const Field<LevelResponse, String> _f$levelName =
      Field('levelName', _$levelName, opt: true);
  static String? _$description(LevelResponse v) => v.description;
  static const Field<LevelResponse, String> _f$description =
      Field('description', _$description, opt: true);
  static List<GradeResponse>? _$grades(LevelResponse v) => v.grades;
  static const Field<LevelResponse, List<GradeResponse>> _f$grades =
      Field('grades', _$grades, opt: true);

  @override
  final MappableFields<LevelResponse> fields = const {
    #id: _f$id,
    #levelName: _f$levelName,
    #description: _f$description,
    #grades: _f$grades,
  };

  static LevelResponse _instantiate(DecodingData data) {
    return LevelResponse(
        id: data.dec(_f$id),
        levelName: data.dec(_f$levelName),
        description: data.dec(_f$description),
        grades: data.dec(_f$grades));
  }

  @override
  final Function instantiate = _instantiate;

  static LevelResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LevelResponse>(map);
  }

  static LevelResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<LevelResponse>(json);
  }
}

mixin LevelResponseMappable {
  String toJsonString() {
    return LevelResponseMapper.ensureInitialized()
        .encodeJson<LevelResponse>(this as LevelResponse);
  }

  Map<String, dynamic> toJson() {
    return LevelResponseMapper.ensureInitialized()
        .encodeMap<LevelResponse>(this as LevelResponse);
  }

  LevelResponseCopyWith<LevelResponse, LevelResponse, LevelResponse>
      get copyWith => _LevelResponseCopyWithImpl(
          this as LevelResponse, $identity, $identity);
  @override
  String toString() {
    return LevelResponseMapper.ensureInitialized()
        .stringifyValue(this as LevelResponse);
  }

  @override
  bool operator ==(Object other) {
    return LevelResponseMapper.ensureInitialized()
        .equalsValue(this as LevelResponse, other);
  }

  @override
  int get hashCode {
    return LevelResponseMapper.ensureInitialized()
        .hashValue(this as LevelResponse);
  }
}

extension LevelResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LevelResponse, $Out> {
  LevelResponseCopyWith<$R, LevelResponse, $Out> get $asLevelResponse =>
      $base.as((v, t, t2) => _LevelResponseCopyWithImpl(v, t, t2));
}

abstract class LevelResponseCopyWith<$R, $In extends LevelResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, GradeResponse,
      GradeResponseCopyWith<$R, GradeResponse, GradeResponse>>? get grades;
  $R call(
      {String? id,
      String? levelName,
      String? description,
      List<GradeResponse>? grades});
  LevelResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LevelResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LevelResponse, $Out>
    implements LevelResponseCopyWith<$R, LevelResponse, $Out> {
  _LevelResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LevelResponse> $mapper =
      LevelResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, GradeResponse,
          GradeResponseCopyWith<$R, GradeResponse, GradeResponse>>?
      get grades => $value.grades != null
          ? ListCopyWith($value.grades!, (v, t) => v.copyWith.$chain(t),
              (v) => call(grades: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? levelName = $none,
          Object? description = $none,
          Object? grades = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (levelName != $none) #levelName: levelName,
        if (description != $none) #description: description,
        if (grades != $none) #grades: grades
      }));
  @override
  LevelResponse $make(CopyWithData data) => LevelResponse(
      id: data.get(#id, or: $value.id),
      levelName: data.get(#levelName, or: $value.levelName),
      description: data.get(#description, or: $value.description),
      grades: data.get(#grades, or: $value.grades));

  @override
  LevelResponseCopyWith<$R2, LevelResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LevelResponseCopyWithImpl($value, $cast, t);
}

class GradeResponseMapper extends ClassMapperBase<GradeResponse> {
  GradeResponseMapper._();

  static GradeResponseMapper? _instance;
  static GradeResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GradeResponseMapper._());
      SubjectResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GradeResponse';

  static String? _$id(GradeResponse v) => v.id;
  static const Field<GradeResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$gradeName(GradeResponse v) => v.gradeName;
  static const Field<GradeResponse, String> _f$gradeName =
      Field('gradeName', _$gradeName, opt: true);
  static String? _$description(GradeResponse v) => v.description;
  static const Field<GradeResponse, String> _f$description =
      Field('description', _$description, opt: true);
  static List<SubjectResponse>? _$subjects(GradeResponse v) => v.subjects;
  static const Field<GradeResponse, List<SubjectResponse>> _f$subjects =
      Field('subjects', _$subjects, opt: true);

  @override
  final MappableFields<GradeResponse> fields = const {
    #id: _f$id,
    #gradeName: _f$gradeName,
    #description: _f$description,
    #subjects: _f$subjects,
  };

  static GradeResponse _instantiate(DecodingData data) {
    return GradeResponse(
        id: data.dec(_f$id),
        gradeName: data.dec(_f$gradeName),
        description: data.dec(_f$description),
        subjects: data.dec(_f$subjects));
  }

  @override
  final Function instantiate = _instantiate;

  static GradeResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GradeResponse>(map);
  }

  static GradeResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<GradeResponse>(json);
  }
}

mixin GradeResponseMappable {
  String toJsonString() {
    return GradeResponseMapper.ensureInitialized()
        .encodeJson<GradeResponse>(this as GradeResponse);
  }

  Map<String, dynamic> toJson() {
    return GradeResponseMapper.ensureInitialized()
        .encodeMap<GradeResponse>(this as GradeResponse);
  }

  GradeResponseCopyWith<GradeResponse, GradeResponse, GradeResponse>
      get copyWith => _GradeResponseCopyWithImpl(
          this as GradeResponse, $identity, $identity);
  @override
  String toString() {
    return GradeResponseMapper.ensureInitialized()
        .stringifyValue(this as GradeResponse);
  }

  @override
  bool operator ==(Object other) {
    return GradeResponseMapper.ensureInitialized()
        .equalsValue(this as GradeResponse, other);
  }

  @override
  int get hashCode {
    return GradeResponseMapper.ensureInitialized()
        .hashValue(this as GradeResponse);
  }
}

extension GradeResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GradeResponse, $Out> {
  GradeResponseCopyWith<$R, GradeResponse, $Out> get $asGradeResponse =>
      $base.as((v, t, t2) => _GradeResponseCopyWithImpl(v, t, t2));
}

abstract class GradeResponseCopyWith<$R, $In extends GradeResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, SubjectResponse,
          SubjectResponseCopyWith<$R, SubjectResponse, SubjectResponse>>?
      get subjects;
  $R call(
      {String? id,
      String? gradeName,
      String? description,
      List<SubjectResponse>? subjects});
  GradeResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GradeResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GradeResponse, $Out>
    implements GradeResponseCopyWith<$R, GradeResponse, $Out> {
  _GradeResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GradeResponse> $mapper =
      GradeResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, SubjectResponse,
          SubjectResponseCopyWith<$R, SubjectResponse, SubjectResponse>>?
      get subjects => $value.subjects != null
          ? ListCopyWith($value.subjects!, (v, t) => v.copyWith.$chain(t),
              (v) => call(subjects: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? gradeName = $none,
          Object? description = $none,
          Object? subjects = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (gradeName != $none) #gradeName: gradeName,
        if (description != $none) #description: description,
        if (subjects != $none) #subjects: subjects
      }));
  @override
  GradeResponse $make(CopyWithData data) => GradeResponse(
      id: data.get(#id, or: $value.id),
      gradeName: data.get(#gradeName, or: $value.gradeName),
      description: data.get(#description, or: $value.description),
      subjects: data.get(#subjects, or: $value.subjects));

  @override
  GradeResponseCopyWith<$R2, GradeResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GradeResponseCopyWithImpl($value, $cast, t);
}

class SubjectResponseMapper extends ClassMapperBase<SubjectResponse> {
  SubjectResponseMapper._();

  static SubjectResponseMapper? _instance;
  static SubjectResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SubjectResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SubjectResponse';

  static String? _$id(SubjectResponse v) => v.id;
  static const Field<SubjectResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$name(SubjectResponse v) => v.name;
  static const Field<SubjectResponse, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$description(SubjectResponse v) => v.description;
  static const Field<SubjectResponse, String> _f$description =
      Field('description', _$description, opt: true);

  @override
  final MappableFields<SubjectResponse> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
  };

  static SubjectResponse _instantiate(DecodingData data) {
    return SubjectResponse(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description));
  }

  @override
  final Function instantiate = _instantiate;

  static SubjectResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SubjectResponse>(map);
  }

  static SubjectResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<SubjectResponse>(json);
  }
}

mixin SubjectResponseMappable {
  String toJsonString() {
    return SubjectResponseMapper.ensureInitialized()
        .encodeJson<SubjectResponse>(this as SubjectResponse);
  }

  Map<String, dynamic> toJson() {
    return SubjectResponseMapper.ensureInitialized()
        .encodeMap<SubjectResponse>(this as SubjectResponse);
  }

  SubjectResponseCopyWith<SubjectResponse, SubjectResponse, SubjectResponse>
      get copyWith => _SubjectResponseCopyWithImpl(
          this as SubjectResponse, $identity, $identity);
  @override
  String toString() {
    return SubjectResponseMapper.ensureInitialized()
        .stringifyValue(this as SubjectResponse);
  }

  @override
  bool operator ==(Object other) {
    return SubjectResponseMapper.ensureInitialized()
        .equalsValue(this as SubjectResponse, other);
  }

  @override
  int get hashCode {
    return SubjectResponseMapper.ensureInitialized()
        .hashValue(this as SubjectResponse);
  }
}

extension SubjectResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SubjectResponse, $Out> {
  SubjectResponseCopyWith<$R, SubjectResponse, $Out> get $asSubjectResponse =>
      $base.as((v, t, t2) => _SubjectResponseCopyWithImpl(v, t, t2));
}

abstract class SubjectResponseCopyWith<$R, $In extends SubjectResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? description});
  SubjectResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SubjectResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SubjectResponse, $Out>
    implements SubjectResponseCopyWith<$R, SubjectResponse, $Out> {
  _SubjectResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SubjectResponse> $mapper =
      SubjectResponseMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? name = $none,
          Object? description = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != $none) #name: name,
        if (description != $none) #description: description
      }));
  @override
  SubjectResponse $make(CopyWithData data) => SubjectResponse(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description));

  @override
  SubjectResponseCopyWith<$R2, SubjectResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SubjectResponseCopyWithImpl($value, $cast, t);
}
