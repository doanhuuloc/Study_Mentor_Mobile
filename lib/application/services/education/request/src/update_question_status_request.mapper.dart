// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'update_question_status_request.dart';

class UpdateQuestionStatusRequestMapper
    extends ClassMapperBase<UpdateQuestionStatusRequest> {
  UpdateQuestionStatusRequestMapper._();

  static UpdateQuestionStatusRequestMapper? _instance;
  static UpdateQuestionStatusRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = UpdateQuestionStatusRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateQuestionStatusRequest';

  static String _$questionId(UpdateQuestionStatusRequest v) => v.questionId;
  static const Field<UpdateQuestionStatusRequest, String> _f$questionId =
      Field('questionId', _$questionId);
  static int _$status(UpdateQuestionStatusRequest v) => v.status;
  static const Field<UpdateQuestionStatusRequest, int> _f$status =
      Field('status', _$status);

  @override
  final MappableFields<UpdateQuestionStatusRequest> fields = const {
    #questionId: _f$questionId,
    #status: _f$status,
  };

  static UpdateQuestionStatusRequest _instantiate(DecodingData data) {
    return UpdateQuestionStatusRequest(
        questionId: data.dec(_f$questionId), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateQuestionStatusRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateQuestionStatusRequest>(map);
  }

  static UpdateQuestionStatusRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<UpdateQuestionStatusRequest>(json);
  }
}

mixin UpdateQuestionStatusRequestMappable {
  String toJsonString() {
    return UpdateQuestionStatusRequestMapper.ensureInitialized()
        .encodeJson<UpdateQuestionStatusRequest>(
            this as UpdateQuestionStatusRequest);
  }

  Map<String, dynamic> toJson() {
    return UpdateQuestionStatusRequestMapper.ensureInitialized()
        .encodeMap<UpdateQuestionStatusRequest>(
            this as UpdateQuestionStatusRequest);
  }

  UpdateQuestionStatusRequestCopyWith<UpdateQuestionStatusRequest,
          UpdateQuestionStatusRequest, UpdateQuestionStatusRequest>
      get copyWith => _UpdateQuestionStatusRequestCopyWithImpl(
          this as UpdateQuestionStatusRequest, $identity, $identity);
  @override
  String toString() {
    return UpdateQuestionStatusRequestMapper.ensureInitialized()
        .stringifyValue(this as UpdateQuestionStatusRequest);
  }

  @override
  bool operator ==(Object other) {
    return UpdateQuestionStatusRequestMapper.ensureInitialized()
        .equalsValue(this as UpdateQuestionStatusRequest, other);
  }

  @override
  int get hashCode {
    return UpdateQuestionStatusRequestMapper.ensureInitialized()
        .hashValue(this as UpdateQuestionStatusRequest);
  }
}

extension UpdateQuestionStatusRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateQuestionStatusRequest, $Out> {
  UpdateQuestionStatusRequestCopyWith<$R, UpdateQuestionStatusRequest, $Out>
      get $asUpdateQuestionStatusRequest => $base
          .as((v, t, t2) => _UpdateQuestionStatusRequestCopyWithImpl(v, t, t2));
}

abstract class UpdateQuestionStatusRequestCopyWith<
    $R,
    $In extends UpdateQuestionStatusRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? questionId, int? status});
  UpdateQuestionStatusRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdateQuestionStatusRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateQuestionStatusRequest, $Out>
    implements
        UpdateQuestionStatusRequestCopyWith<$R, UpdateQuestionStatusRequest,
            $Out> {
  _UpdateQuestionStatusRequestCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateQuestionStatusRequest> $mapper =
      UpdateQuestionStatusRequestMapper.ensureInitialized();
  @override
  $R call({String? questionId, int? status}) => $apply(FieldCopyWithData({
        if (questionId != null) #questionId: questionId,
        if (status != null) #status: status
      }));
  @override
  UpdateQuestionStatusRequest $make(CopyWithData data) =>
      UpdateQuestionStatusRequest(
          questionId: data.get(#questionId, or: $value.questionId),
          status: data.get(#status, or: $value.status));

  @override
  UpdateQuestionStatusRequestCopyWith<$R2, UpdateQuestionStatusRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdateQuestionStatusRequestCopyWithImpl($value, $cast, t);
}
