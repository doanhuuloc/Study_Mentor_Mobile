// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'canel_find_system_question_request.dart';

class CancelFindSystemQuestionRequestMapper
    extends ClassMapperBase<CancelFindSystemQuestionRequest> {
  CancelFindSystemQuestionRequestMapper._();

  static CancelFindSystemQuestionRequestMapper? _instance;
  static CancelFindSystemQuestionRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = CancelFindSystemQuestionRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CancelFindSystemQuestionRequest';

  static String _$questionId(CancelFindSystemQuestionRequest v) => v.questionId;
  static const Field<CancelFindSystemQuestionRequest, String> _f$questionId =
      Field('questionId', _$questionId);

  @override
  final MappableFields<CancelFindSystemQuestionRequest> fields = const {
    #questionId: _f$questionId,
  };

  static CancelFindSystemQuestionRequest _instantiate(DecodingData data) {
    return CancelFindSystemQuestionRequest(questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static CancelFindSystemQuestionRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CancelFindSystemQuestionRequest>(map);
  }

  static CancelFindSystemQuestionRequest fromJsonString(String json) {
    return ensureInitialized()
        .decodeJson<CancelFindSystemQuestionRequest>(json);
  }
}

mixin CancelFindSystemQuestionRequestMappable {
  String toJsonString() {
    return CancelFindSystemQuestionRequestMapper.ensureInitialized()
        .encodeJson<CancelFindSystemQuestionRequest>(
            this as CancelFindSystemQuestionRequest);
  }

  Map<String, dynamic> toJson() {
    return CancelFindSystemQuestionRequestMapper.ensureInitialized()
        .encodeMap<CancelFindSystemQuestionRequest>(
            this as CancelFindSystemQuestionRequest);
  }

  CancelFindSystemQuestionRequestCopyWith<CancelFindSystemQuestionRequest,
          CancelFindSystemQuestionRequest, CancelFindSystemQuestionRequest>
      get copyWith => _CancelFindSystemQuestionRequestCopyWithImpl(
          this as CancelFindSystemQuestionRequest, $identity, $identity);
  @override
  String toString() {
    return CancelFindSystemQuestionRequestMapper.ensureInitialized()
        .stringifyValue(this as CancelFindSystemQuestionRequest);
  }

  @override
  bool operator ==(Object other) {
    return CancelFindSystemQuestionRequestMapper.ensureInitialized()
        .equalsValue(this as CancelFindSystemQuestionRequest, other);
  }

  @override
  int get hashCode {
    return CancelFindSystemQuestionRequestMapper.ensureInitialized()
        .hashValue(this as CancelFindSystemQuestionRequest);
  }
}

extension CancelFindSystemQuestionRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CancelFindSystemQuestionRequest, $Out> {
  CancelFindSystemQuestionRequestCopyWith<$R, CancelFindSystemQuestionRequest,
          $Out>
      get $asCancelFindSystemQuestionRequest => $base.as(
          (v, t, t2) => _CancelFindSystemQuestionRequestCopyWithImpl(v, t, t2));
}

abstract class CancelFindSystemQuestionRequestCopyWith<
    $R,
    $In extends CancelFindSystemQuestionRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? questionId});
  CancelFindSystemQuestionRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CancelFindSystemQuestionRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CancelFindSystemQuestionRequest, $Out>
    implements
        CancelFindSystemQuestionRequestCopyWith<$R,
            CancelFindSystemQuestionRequest, $Out> {
  _CancelFindSystemQuestionRequestCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CancelFindSystemQuestionRequest> $mapper =
      CancelFindSystemQuestionRequestMapper.ensureInitialized();
  @override
  $R call({String? questionId}) => $apply(
      FieldCopyWithData({if (questionId != null) #questionId: questionId}));
  @override
  CancelFindSystemQuestionRequest $make(CopyWithData data) =>
      CancelFindSystemQuestionRequest(
          questionId: data.get(#questionId, or: $value.questionId));

  @override
  CancelFindSystemQuestionRequestCopyWith<$R2, CancelFindSystemQuestionRequest,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CancelFindSystemQuestionRequestCopyWithImpl($value, $cast, t);
}
