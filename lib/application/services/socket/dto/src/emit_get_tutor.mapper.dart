// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'emit_get_tutor.dart';

class EmitGetTutorMapper extends ClassMapperBase<EmitGetTutor> {
  EmitGetTutorMapper._();

  static EmitGetTutorMapper? _instance;
  static EmitGetTutorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EmitGetTutorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EmitGetTutor';

  static String? _$userId(EmitGetTutor v) => v.userId;
  static const Field<EmitGetTutor, String> _f$userId =
      Field('userId', _$userId, opt: true);
  static String? _$subjectId(EmitGetTutor v) => v.subjectId;
  static const Field<EmitGetTutor, String> _f$subjectId =
      Field('subjectId', _$subjectId, opt: true);
  static int? _$page(EmitGetTutor v) => v.page;
  static const Field<EmitGetTutor, int> _f$page =
      Field('page', _$page, opt: true);
  static int? _$pageSize(EmitGetTutor v) => v.pageSize;
  static const Field<EmitGetTutor, int> _f$pageSize =
      Field('pageSize', _$pageSize, opt: true);

  @override
  final MappableFields<EmitGetTutor> fields = const {
    #userId: _f$userId,
    #subjectId: _f$subjectId,
    #page: _f$page,
    #pageSize: _f$pageSize,
  };

  static EmitGetTutor _instantiate(DecodingData data) {
    return EmitGetTutor(
        userId: data.dec(_f$userId),
        subjectId: data.dec(_f$subjectId),
        page: data.dec(_f$page),
        pageSize: data.dec(_f$pageSize));
  }

  @override
  final Function instantiate = _instantiate;

  static EmitGetTutor fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EmitGetTutor>(map);
  }

  static EmitGetTutor fromJsonString(String json) {
    return ensureInitialized().decodeJson<EmitGetTutor>(json);
  }
}

mixin EmitGetTutorMappable {
  String toJsonString() {
    return EmitGetTutorMapper.ensureInitialized()
        .encodeJson<EmitGetTutor>(this as EmitGetTutor);
  }

  Map<String, dynamic> toJson() {
    return EmitGetTutorMapper.ensureInitialized()
        .encodeMap<EmitGetTutor>(this as EmitGetTutor);
  }

  EmitGetTutorCopyWith<EmitGetTutor, EmitGetTutor, EmitGetTutor> get copyWith =>
      _EmitGetTutorCopyWithImpl(this as EmitGetTutor, $identity, $identity);
  @override
  String toString() {
    return EmitGetTutorMapper.ensureInitialized()
        .stringifyValue(this as EmitGetTutor);
  }

  @override
  bool operator ==(Object other) {
    return EmitGetTutorMapper.ensureInitialized()
        .equalsValue(this as EmitGetTutor, other);
  }

  @override
  int get hashCode {
    return EmitGetTutorMapper.ensureInitialized()
        .hashValue(this as EmitGetTutor);
  }
}

extension EmitGetTutorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EmitGetTutor, $Out> {
  EmitGetTutorCopyWith<$R, EmitGetTutor, $Out> get $asEmitGetTutor =>
      $base.as((v, t, t2) => _EmitGetTutorCopyWithImpl(v, t, t2));
}

abstract class EmitGetTutorCopyWith<$R, $In extends EmitGetTutor, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? userId, String? subjectId, int? page, int? pageSize});
  EmitGetTutorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EmitGetTutorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EmitGetTutor, $Out>
    implements EmitGetTutorCopyWith<$R, EmitGetTutor, $Out> {
  _EmitGetTutorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EmitGetTutor> $mapper =
      EmitGetTutorMapper.ensureInitialized();
  @override
  $R call(
          {Object? userId = $none,
          Object? subjectId = $none,
          Object? page = $none,
          Object? pageSize = $none}) =>
      $apply(FieldCopyWithData({
        if (userId != $none) #userId: userId,
        if (subjectId != $none) #subjectId: subjectId,
        if (page != $none) #page: page,
        if (pageSize != $none) #pageSize: pageSize
      }));
  @override
  EmitGetTutor $make(CopyWithData data) => EmitGetTutor(
      userId: data.get(#userId, or: $value.userId),
      subjectId: data.get(#subjectId, or: $value.subjectId),
      page: data.get(#page, or: $value.page),
      pageSize: data.get(#pageSize, or: $value.pageSize));

  @override
  EmitGetTutorCopyWith<$R2, EmitGetTutor, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EmitGetTutorCopyWithImpl($value, $cast, t);
}
