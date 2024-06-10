// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_ggmeet_request.dart';

class CreateGGMeetRequestMapper extends ClassMapperBase<CreateGGMeetRequest> {
  CreateGGMeetRequestMapper._();

  static CreateGGMeetRequestMapper? _instance;
  static CreateGGMeetRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateGGMeetRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateGGMeetRequest';

  static String? _$tutorId(CreateGGMeetRequest v) => v.tutorId;
  static const Field<CreateGGMeetRequest, String> _f$tutorId =
      Field('tutorId', _$tutorId, opt: true);
  static String? _$questionId(CreateGGMeetRequest v) => v.questionId;
  static const Field<CreateGGMeetRequest, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);

  @override
  final MappableFields<CreateGGMeetRequest> fields = const {
    #tutorId: _f$tutorId,
    #questionId: _f$questionId,
  };

  static CreateGGMeetRequest _instantiate(DecodingData data) {
    return CreateGGMeetRequest(
        tutorId: data.dec(_f$tutorId), questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateGGMeetRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateGGMeetRequest>(map);
  }

  static CreateGGMeetRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateGGMeetRequest>(json);
  }
}

mixin CreateGGMeetRequestMappable {
  String toJsonString() {
    return CreateGGMeetRequestMapper.ensureInitialized()
        .encodeJson<CreateGGMeetRequest>(this as CreateGGMeetRequest);
  }

  Map<String, dynamic> toJson() {
    return CreateGGMeetRequestMapper.ensureInitialized()
        .encodeMap<CreateGGMeetRequest>(this as CreateGGMeetRequest);
  }

  CreateGGMeetRequestCopyWith<CreateGGMeetRequest, CreateGGMeetRequest,
          CreateGGMeetRequest>
      get copyWith => _CreateGGMeetRequestCopyWithImpl(
          this as CreateGGMeetRequest, $identity, $identity);
  @override
  String toString() {
    return CreateGGMeetRequestMapper.ensureInitialized()
        .stringifyValue(this as CreateGGMeetRequest);
  }

  @override
  bool operator ==(Object other) {
    return CreateGGMeetRequestMapper.ensureInitialized()
        .equalsValue(this as CreateGGMeetRequest, other);
  }

  @override
  int get hashCode {
    return CreateGGMeetRequestMapper.ensureInitialized()
        .hashValue(this as CreateGGMeetRequest);
  }
}

extension CreateGGMeetRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateGGMeetRequest, $Out> {
  CreateGGMeetRequestCopyWith<$R, CreateGGMeetRequest, $Out>
      get $asCreateGGMeetRequest =>
          $base.as((v, t, t2) => _CreateGGMeetRequestCopyWithImpl(v, t, t2));
}

abstract class CreateGGMeetRequestCopyWith<$R, $In extends CreateGGMeetRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? tutorId, String? questionId});
  CreateGGMeetRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateGGMeetRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateGGMeetRequest, $Out>
    implements CreateGGMeetRequestCopyWith<$R, CreateGGMeetRequest, $Out> {
  _CreateGGMeetRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateGGMeetRequest> $mapper =
      CreateGGMeetRequestMapper.ensureInitialized();
  @override
  $R call({Object? tutorId = $none, Object? questionId = $none}) =>
      $apply(FieldCopyWithData({
        if (tutorId != $none) #tutorId: tutorId,
        if (questionId != $none) #questionId: questionId
      }));
  @override
  CreateGGMeetRequest $make(CopyWithData data) => CreateGGMeetRequest(
      tutorId: data.get(#tutorId, or: $value.tutorId),
      questionId: data.get(#questionId, or: $value.questionId));

  @override
  CreateGGMeetRequestCopyWith<$R2, CreateGGMeetRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateGGMeetRequestCopyWithImpl($value, $cast, t);
}
