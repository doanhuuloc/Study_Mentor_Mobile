// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pick_intrustor_request.dart';

class PickIntrustorRequestMapper extends ClassMapperBase<PickIntrustorRequest> {
  PickIntrustorRequestMapper._();

  static PickIntrustorRequestMapper? _instance;
  static PickIntrustorRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PickIntrustorRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PickIntrustorRequest';

  static String _$tutorId(PickIntrustorRequest v) => v.tutorId;
  static const Field<PickIntrustorRequest, String> _f$tutorId =
      Field('tutorId', _$tutorId);
  static String _$questionId(PickIntrustorRequest v) => v.questionId;
  static const Field<PickIntrustorRequest, String> _f$questionId =
      Field('questionId', _$questionId);

  @override
  final MappableFields<PickIntrustorRequest> fields = const {
    #tutorId: _f$tutorId,
    #questionId: _f$questionId,
  };

  static PickIntrustorRequest _instantiate(DecodingData data) {
    return PickIntrustorRequest(
        tutorId: data.dec(_f$tutorId), questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static PickIntrustorRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PickIntrustorRequest>(map);
  }

  static PickIntrustorRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<PickIntrustorRequest>(json);
  }
}

mixin PickIntrustorRequestMappable {
  String toJsonString() {
    return PickIntrustorRequestMapper.ensureInitialized()
        .encodeJson<PickIntrustorRequest>(this as PickIntrustorRequest);
  }

  Map<String, dynamic> toJson() {
    return PickIntrustorRequestMapper.ensureInitialized()
        .encodeMap<PickIntrustorRequest>(this as PickIntrustorRequest);
  }

  PickIntrustorRequestCopyWith<PickIntrustorRequest, PickIntrustorRequest,
          PickIntrustorRequest>
      get copyWith => _PickIntrustorRequestCopyWithImpl(
          this as PickIntrustorRequest, $identity, $identity);
  @override
  String toString() {
    return PickIntrustorRequestMapper.ensureInitialized()
        .stringifyValue(this as PickIntrustorRequest);
  }

  @override
  bool operator ==(Object other) {
    return PickIntrustorRequestMapper.ensureInitialized()
        .equalsValue(this as PickIntrustorRequest, other);
  }

  @override
  int get hashCode {
    return PickIntrustorRequestMapper.ensureInitialized()
        .hashValue(this as PickIntrustorRequest);
  }
}

extension PickIntrustorRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PickIntrustorRequest, $Out> {
  PickIntrustorRequestCopyWith<$R, PickIntrustorRequest, $Out>
      get $asPickIntrustorRequest =>
          $base.as((v, t, t2) => _PickIntrustorRequestCopyWithImpl(v, t, t2));
}

abstract class PickIntrustorRequestCopyWith<
    $R,
    $In extends PickIntrustorRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? tutorId, String? questionId});
  PickIntrustorRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PickIntrustorRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PickIntrustorRequest, $Out>
    implements PickIntrustorRequestCopyWith<$R, PickIntrustorRequest, $Out> {
  _PickIntrustorRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PickIntrustorRequest> $mapper =
      PickIntrustorRequestMapper.ensureInitialized();
  @override
  $R call({String? tutorId, String? questionId}) => $apply(FieldCopyWithData({
        if (tutorId != null) #tutorId: tutorId,
        if (questionId != null) #questionId: questionId
      }));
  @override
  PickIntrustorRequest $make(CopyWithData data) => PickIntrustorRequest(
      tutorId: data.get(#tutorId, or: $value.tutorId),
      questionId: data.get(#questionId, or: $value.questionId));

  @override
  PickIntrustorRequestCopyWith<$R2, PickIntrustorRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PickIntrustorRequestCopyWithImpl($value, $cast, t);
}
