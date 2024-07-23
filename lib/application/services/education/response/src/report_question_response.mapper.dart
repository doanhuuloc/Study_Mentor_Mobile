// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'report_question_response.dart';

class ReportQuestionResponseMapper
    extends ClassMapperBase<ReportQuestionResponse> {
  ReportQuestionResponseMapper._();

  static ReportQuestionResponseMapper? _instance;
  static ReportQuestionResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReportQuestionResponseMapper._());
      FileResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ReportQuestionResponse';

  static String? _$id(ReportQuestionResponse v) => v.id;
  static const Field<ReportQuestionResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$questionName(ReportQuestionResponse v) => v.questionName;
  static const Field<ReportQuestionResponse, String> _f$questionName =
      Field('questionName', _$questionName, opt: true);
  static String? _$studentId(ReportQuestionResponse v) => v.studentId;
  static const Field<ReportQuestionResponse, String> _f$studentId =
      Field('studentId', _$studentId, opt: true);
  static String? _$content(ReportQuestionResponse v) => v.content;
  static const Field<ReportQuestionResponse, String> _f$content =
      Field('content', _$content, opt: true);
  static List<FileResponse>? _$attachFiles(ReportQuestionResponse v) =>
      v.attachFiles;
  static const Field<ReportQuestionResponse, List<FileResponse>>
      _f$attachFiles = Field('attachFiles', _$attachFiles, opt: true);
  static DateTime? _$createdAt(ReportQuestionResponse v) => v.createdAt;
  static const Field<ReportQuestionResponse, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);
  static String? _$questionId(ReportQuestionResponse v) => v.questionId;
  static const Field<ReportQuestionResponse, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);
  static String? _$questionTitle(ReportQuestionResponse v) => v.questionTitle;
  static const Field<ReportQuestionResponse, String> _f$questionTitle =
      Field('questionTitle', _$questionTitle, opt: true);
  static String? _$studentName(ReportQuestionResponse v) => v.studentName;
  static const Field<ReportQuestionResponse, String> _f$studentName =
      Field('studentName', _$studentName, opt: true);

  @override
  final MappableFields<ReportQuestionResponse> fields = const {
    #id: _f$id,
    #questionName: _f$questionName,
    #studentId: _f$studentId,
    #content: _f$content,
    #attachFiles: _f$attachFiles,
    #createdAt: _f$createdAt,
    #questionId: _f$questionId,
    #questionTitle: _f$questionTitle,
    #studentName: _f$studentName,
  };

  static ReportQuestionResponse _instantiate(DecodingData data) {
    return ReportQuestionResponse(
        id: data.dec(_f$id),
        questionName: data.dec(_f$questionName),
        studentId: data.dec(_f$studentId),
        content: data.dec(_f$content),
        attachFiles: data.dec(_f$attachFiles),
        createdAt: data.dec(_f$createdAt),
        questionId: data.dec(_f$questionId),
        questionTitle: data.dec(_f$questionTitle),
        studentName: data.dec(_f$studentName));
  }

  @override
  final Function instantiate = _instantiate;

  static ReportQuestionResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReportQuestionResponse>(map);
  }

  static ReportQuestionResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<ReportQuestionResponse>(json);
  }
}

mixin ReportQuestionResponseMappable {
  String toJsonString() {
    return ReportQuestionResponseMapper.ensureInitialized()
        .encodeJson<ReportQuestionResponse>(this as ReportQuestionResponse);
  }

  Map<String, dynamic> toJson() {
    return ReportQuestionResponseMapper.ensureInitialized()
        .encodeMap<ReportQuestionResponse>(this as ReportQuestionResponse);
  }

  ReportQuestionResponseCopyWith<ReportQuestionResponse, ReportQuestionResponse,
          ReportQuestionResponse>
      get copyWith => _ReportQuestionResponseCopyWithImpl(
          this as ReportQuestionResponse, $identity, $identity);
  @override
  String toString() {
    return ReportQuestionResponseMapper.ensureInitialized()
        .stringifyValue(this as ReportQuestionResponse);
  }

  @override
  bool operator ==(Object other) {
    return ReportQuestionResponseMapper.ensureInitialized()
        .equalsValue(this as ReportQuestionResponse, other);
  }

  @override
  int get hashCode {
    return ReportQuestionResponseMapper.ensureInitialized()
        .hashValue(this as ReportQuestionResponse);
  }
}

extension ReportQuestionResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReportQuestionResponse, $Out> {
  ReportQuestionResponseCopyWith<$R, ReportQuestionResponse, $Out>
      get $asReportQuestionResponse =>
          $base.as((v, t, t2) => _ReportQuestionResponseCopyWithImpl(v, t, t2));
}

abstract class ReportQuestionResponseCopyWith<
    $R,
    $In extends ReportQuestionResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileResponse,
      FileResponseCopyWith<$R, FileResponse, FileResponse>>? get attachFiles;
  $R call(
      {String? id,
      String? questionName,
      String? studentId,
      String? content,
      List<FileResponse>? attachFiles,
      DateTime? createdAt,
      String? questionId,
      String? questionTitle,
      String? studentName});
  ReportQuestionResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ReportQuestionResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReportQuestionResponse, $Out>
    implements
        ReportQuestionResponseCopyWith<$R, ReportQuestionResponse, $Out> {
  _ReportQuestionResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReportQuestionResponse> $mapper =
      ReportQuestionResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FileResponse,
          FileResponseCopyWith<$R, FileResponse, FileResponse>>?
      get attachFiles => $value.attachFiles != null
          ? ListCopyWith($value.attachFiles!, (v, t) => v.copyWith.$chain(t),
              (v) => call(attachFiles: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? questionName = $none,
          Object? studentId = $none,
          Object? content = $none,
          Object? attachFiles = $none,
          Object? createdAt = $none,
          Object? questionId = $none,
          Object? questionTitle = $none,
          Object? studentName = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (questionName != $none) #questionName: questionName,
        if (studentId != $none) #studentId: studentId,
        if (content != $none) #content: content,
        if (attachFiles != $none) #attachFiles: attachFiles,
        if (createdAt != $none) #createdAt: createdAt,
        if (questionId != $none) #questionId: questionId,
        if (questionTitle != $none) #questionTitle: questionTitle,
        if (studentName != $none) #studentName: studentName
      }));
  @override
  ReportQuestionResponse $make(CopyWithData data) => ReportQuestionResponse(
      id: data.get(#id, or: $value.id),
      questionName: data.get(#questionName, or: $value.questionName),
      studentId: data.get(#studentId, or: $value.studentId),
      content: data.get(#content, or: $value.content),
      attachFiles: data.get(#attachFiles, or: $value.attachFiles),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      questionId: data.get(#questionId, or: $value.questionId),
      questionTitle: data.get(#questionTitle, or: $value.questionTitle),
      studentName: data.get(#studentName, or: $value.studentName));

  @override
  ReportQuestionResponseCopyWith<$R2, ReportQuestionResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ReportQuestionResponseCopyWithImpl($value, $cast, t);
}
