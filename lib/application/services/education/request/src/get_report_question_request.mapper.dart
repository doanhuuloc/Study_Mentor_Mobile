// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_report_question_request.dart';

class GetReportQuestionRequestMapper
    extends ClassMapperBase<GetReportQuestionRequest> {
  GetReportQuestionRequestMapper._();

  static GetReportQuestionRequestMapper? _instance;
  static GetReportQuestionRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GetReportQuestionRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetReportQuestionRequest';

  static String _$reportId(GetReportQuestionRequest v) => v.reportId;
  static const Field<GetReportQuestionRequest, String> _f$reportId =
      Field('reportId', _$reportId);

  @override
  final MappableFields<GetReportQuestionRequest> fields = const {
    #reportId: _f$reportId,
  };

  static GetReportQuestionRequest _instantiate(DecodingData data) {
    return GetReportQuestionRequest(reportId: data.dec(_f$reportId));
  }

  @override
  final Function instantiate = _instantiate;

  static GetReportQuestionRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetReportQuestionRequest>(map);
  }

  static GetReportQuestionRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<GetReportQuestionRequest>(json);
  }
}

mixin GetReportQuestionRequestMappable {
  String toJsonString() {
    return GetReportQuestionRequestMapper.ensureInitialized()
        .encodeJson<GetReportQuestionRequest>(this as GetReportQuestionRequest);
  }

  Map<String, dynamic> toJson() {
    return GetReportQuestionRequestMapper.ensureInitialized()
        .encodeMap<GetReportQuestionRequest>(this as GetReportQuestionRequest);
  }

  GetReportQuestionRequestCopyWith<GetReportQuestionRequest,
          GetReportQuestionRequest, GetReportQuestionRequest>
      get copyWith => _GetReportQuestionRequestCopyWithImpl(
          this as GetReportQuestionRequest, $identity, $identity);
  @override
  String toString() {
    return GetReportQuestionRequestMapper.ensureInitialized()
        .stringifyValue(this as GetReportQuestionRequest);
  }

  @override
  bool operator ==(Object other) {
    return GetReportQuestionRequestMapper.ensureInitialized()
        .equalsValue(this as GetReportQuestionRequest, other);
  }

  @override
  int get hashCode {
    return GetReportQuestionRequestMapper.ensureInitialized()
        .hashValue(this as GetReportQuestionRequest);
  }
}

extension GetReportQuestionRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetReportQuestionRequest, $Out> {
  GetReportQuestionRequestCopyWith<$R, GetReportQuestionRequest, $Out>
      get $asGetReportQuestionRequest => $base
          .as((v, t, t2) => _GetReportQuestionRequestCopyWithImpl(v, t, t2));
}

abstract class GetReportQuestionRequestCopyWith<
    $R,
    $In extends GetReportQuestionRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? reportId});
  GetReportQuestionRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetReportQuestionRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetReportQuestionRequest, $Out>
    implements
        GetReportQuestionRequestCopyWith<$R, GetReportQuestionRequest, $Out> {
  _GetReportQuestionRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetReportQuestionRequest> $mapper =
      GetReportQuestionRequestMapper.ensureInitialized();
  @override
  $R call({String? reportId}) =>
      $apply(FieldCopyWithData({if (reportId != null) #reportId: reportId}));
  @override
  GetReportQuestionRequest $make(CopyWithData data) => GetReportQuestionRequest(
      reportId: data.get(#reportId, or: $value.reportId));

  @override
  GetReportQuestionRequestCopyWith<$R2, GetReportQuestionRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetReportQuestionRequestCopyWithImpl($value, $cast, t);
}
