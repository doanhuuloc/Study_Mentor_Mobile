// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rate_question_request.dart';

class RateQuestionRequestMapper extends ClassMapperBase<RateQuestionRequest> {
  RateQuestionRequestMapper._();

  static RateQuestionRequestMapper? _instance;
  static RateQuestionRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RateQuestionRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RateQuestionRequest';

  static String _$tutorId(RateQuestionRequest v) => v.tutorId;
  static const Field<RateQuestionRequest, String> _f$tutorId =
      Field('tutorId', _$tutorId);
  static String _$comment(RateQuestionRequest v) => v.comment;
  static const Field<RateQuestionRequest, String> _f$comment =
      Field('comment', _$comment);
  static int _$numberOfStar(RateQuestionRequest v) => v.numberOfStar;
  static const Field<RateQuestionRequest, int> _f$numberOfStar =
      Field('numberOfStar', _$numberOfStar);

  @override
  final MappableFields<RateQuestionRequest> fields = const {
    #tutorId: _f$tutorId,
    #comment: _f$comment,
    #numberOfStar: _f$numberOfStar,
  };

  static RateQuestionRequest _instantiate(DecodingData data) {
    return RateQuestionRequest(
        tutorId: data.dec(_f$tutorId),
        comment: data.dec(_f$comment),
        numberOfStar: data.dec(_f$numberOfStar));
  }

  @override
  final Function instantiate = _instantiate;

  static RateQuestionRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RateQuestionRequest>(map);
  }

  static RateQuestionRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<RateQuestionRequest>(json);
  }
}

mixin RateQuestionRequestMappable {
  String toJsonString() {
    return RateQuestionRequestMapper.ensureInitialized()
        .encodeJson<RateQuestionRequest>(this as RateQuestionRequest);
  }

  Map<String, dynamic> toJson() {
    return RateQuestionRequestMapper.ensureInitialized()
        .encodeMap<RateQuestionRequest>(this as RateQuestionRequest);
  }

  RateQuestionRequestCopyWith<RateQuestionRequest, RateQuestionRequest,
          RateQuestionRequest>
      get copyWith => _RateQuestionRequestCopyWithImpl(
          this as RateQuestionRequest, $identity, $identity);
  @override
  String toString() {
    return RateQuestionRequestMapper.ensureInitialized()
        .stringifyValue(this as RateQuestionRequest);
  }

  @override
  bool operator ==(Object other) {
    return RateQuestionRequestMapper.ensureInitialized()
        .equalsValue(this as RateQuestionRequest, other);
  }

  @override
  int get hashCode {
    return RateQuestionRequestMapper.ensureInitialized()
        .hashValue(this as RateQuestionRequest);
  }
}

extension RateQuestionRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RateQuestionRequest, $Out> {
  RateQuestionRequestCopyWith<$R, RateQuestionRequest, $Out>
      get $asRateQuestionRequest =>
          $base.as((v, t, t2) => _RateQuestionRequestCopyWithImpl(v, t, t2));
}

abstract class RateQuestionRequestCopyWith<$R, $In extends RateQuestionRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? tutorId, String? comment, int? numberOfStar});
  RateQuestionRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RateQuestionRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RateQuestionRequest, $Out>
    implements RateQuestionRequestCopyWith<$R, RateQuestionRequest, $Out> {
  _RateQuestionRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RateQuestionRequest> $mapper =
      RateQuestionRequestMapper.ensureInitialized();
  @override
  $R call({String? tutorId, String? comment, int? numberOfStar}) =>
      $apply(FieldCopyWithData({
        if (tutorId != null) #tutorId: tutorId,
        if (comment != null) #comment: comment,
        if (numberOfStar != null) #numberOfStar: numberOfStar
      }));
  @override
  RateQuestionRequest $make(CopyWithData data) => RateQuestionRequest(
      tutorId: data.get(#tutorId, or: $value.tutorId),
      comment: data.get(#comment, or: $value.comment),
      numberOfStar: data.get(#numberOfStar, or: $value.numberOfStar));

  @override
  RateQuestionRequestCopyWith<$R2, RateQuestionRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RateQuestionRequestCopyWithImpl($value, $cast, t);
}
