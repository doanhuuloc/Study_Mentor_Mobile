// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'report_tutor_request.dart';

class ReportTutorRequestMapper extends ClassMapperBase<ReportTutorRequest> {
  ReportTutorRequestMapper._();

  static ReportTutorRequestMapper? _instance;
  static ReportTutorRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReportTutorRequestMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ReportTutorRequest';

  static String _$questionId(ReportTutorRequest v) => v.questionId;
  static const Field<ReportTutorRequest, String> _f$questionId =
      Field('questionId', _$questionId);
  static String _$tutorId(ReportTutorRequest v) => v.tutorId;
  static const Field<ReportTutorRequest, String> _f$tutorId =
      Field('tutorId', _$tutorId);
  static String _$studentId(ReportTutorRequest v) => v.studentId;
  static const Field<ReportTutorRequest, String> _f$studentId =
      Field('studentId', _$studentId);
  static String _$content(ReportTutorRequest v) => v.content;
  static const Field<ReportTutorRequest, String> _f$content =
      Field('content', _$content);
  static List<FileRequest>? _$attachFiles(ReportTutorRequest v) =>
      v.attachFiles;
  static const Field<ReportTutorRequest, List<FileRequest>> _f$attachFiles =
      Field('attachFiles', _$attachFiles, opt: true);

  @override
  final MappableFields<ReportTutorRequest> fields = const {
    #questionId: _f$questionId,
    #tutorId: _f$tutorId,
    #studentId: _f$studentId,
    #content: _f$content,
    #attachFiles: _f$attachFiles,
  };

  static ReportTutorRequest _instantiate(DecodingData data) {
    return ReportTutorRequest(
        questionId: data.dec(_f$questionId),
        tutorId: data.dec(_f$tutorId),
        studentId: data.dec(_f$studentId),
        content: data.dec(_f$content),
        attachFiles: data.dec(_f$attachFiles));
  }

  @override
  final Function instantiate = _instantiate;

  static ReportTutorRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReportTutorRequest>(map);
  }

  static ReportTutorRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<ReportTutorRequest>(json);
  }
}

mixin ReportTutorRequestMappable {
  String toJsonString() {
    return ReportTutorRequestMapper.ensureInitialized()
        .encodeJson<ReportTutorRequest>(this as ReportTutorRequest);
  }

  Map<String, dynamic> toJson() {
    return ReportTutorRequestMapper.ensureInitialized()
        .encodeMap<ReportTutorRequest>(this as ReportTutorRequest);
  }

  ReportTutorRequestCopyWith<ReportTutorRequest, ReportTutorRequest,
          ReportTutorRequest>
      get copyWith => _ReportTutorRequestCopyWithImpl(
          this as ReportTutorRequest, $identity, $identity);
  @override
  String toString() {
    return ReportTutorRequestMapper.ensureInitialized()
        .stringifyValue(this as ReportTutorRequest);
  }

  @override
  bool operator ==(Object other) {
    return ReportTutorRequestMapper.ensureInitialized()
        .equalsValue(this as ReportTutorRequest, other);
  }

  @override
  int get hashCode {
    return ReportTutorRequestMapper.ensureInitialized()
        .hashValue(this as ReportTutorRequest);
  }
}

extension ReportTutorRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReportTutorRequest, $Out> {
  ReportTutorRequestCopyWith<$R, ReportTutorRequest, $Out>
      get $asReportTutorRequest =>
          $base.as((v, t, t2) => _ReportTutorRequestCopyWithImpl(v, t, t2));
}

abstract class ReportTutorRequestCopyWith<$R, $In extends ReportTutorRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileRequest,
      FileRequestCopyWith<$R, FileRequest, FileRequest>>? get attachFiles;
  $R call(
      {String? questionId,
      String? tutorId,
      String? studentId,
      String? content,
      List<FileRequest>? attachFiles});
  ReportTutorRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ReportTutorRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReportTutorRequest, $Out>
    implements ReportTutorRequestCopyWith<$R, ReportTutorRequest, $Out> {
  _ReportTutorRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReportTutorRequest> $mapper =
      ReportTutorRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FileRequest,
          FileRequestCopyWith<$R, FileRequest, FileRequest>>?
      get attachFiles => $value.attachFiles != null
          ? ListCopyWith($value.attachFiles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(attachFiles: v))
          : null;
  @override
  $R call(
          {String? questionId,
          String? tutorId,
          String? studentId,
          String? content,
          Object? attachFiles = $none}) =>
      $apply(FieldCopyWithData({
        if (questionId != null) #questionId: questionId,
        if (tutorId != null) #tutorId: tutorId,
        if (studentId != null) #studentId: studentId,
        if (content != null) #content: content,
        if (attachFiles != $none) #attachFiles: attachFiles
      }));
  @override
  ReportTutorRequest $make(CopyWithData data) => ReportTutorRequest(
      questionId: data.get(#questionId, or: $value.questionId),
      tutorId: data.get(#tutorId, or: $value.tutorId),
      studentId: data.get(#studentId, or: $value.studentId),
      content: data.get(#content, or: $value.content),
      attachFiles: data.get(#attachFiles, or: $value.attachFiles));

  @override
  ReportTutorRequestCopyWith<$R2, ReportTutorRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReportTutorRequestCopyWithImpl($value, $cast, t);
}
