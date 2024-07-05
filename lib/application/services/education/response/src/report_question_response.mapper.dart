// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'report_question_response.dart';

class ReportQuestionReponseMapper
    extends ClassMapperBase<ReportQuestionReponse> {
  ReportQuestionReponseMapper._();

  static ReportQuestionReponseMapper? _instance;
  static ReportQuestionReponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReportQuestionReponseMapper._());
      FileResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ReportQuestionReponse';

  static String? _$id(ReportQuestionReponse v) => v.id;
  static const Field<ReportQuestionReponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$questionName(ReportQuestionReponse v) => v.questionName;
  static const Field<ReportQuestionReponse, String> _f$questionName =
      Field('questionName', _$questionName, opt: true);
  static String? _$studentId(ReportQuestionReponse v) => v.studentId;
  static const Field<ReportQuestionReponse, String> _f$studentId =
      Field('studentId', _$studentId, opt: true);
  static String? _$content(ReportQuestionReponse v) => v.content;
  static const Field<ReportQuestionReponse, String> _f$content =
      Field('content', _$content, opt: true);
  static List<FileResponse>? _$attachFiles(ReportQuestionReponse v) =>
      v.attachFiles;
  static const Field<ReportQuestionReponse, List<FileResponse>> _f$attachFiles =
      Field('attachFiles', _$attachFiles, opt: true);
  static DateTime? _$createdAt(ReportQuestionReponse v) => v.createdAt;
  static const Field<ReportQuestionReponse, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);
  static String? _$questionId(ReportQuestionReponse v) => v.questionId;
  static const Field<ReportQuestionReponse, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);
  static String? _$questionTitle(ReportQuestionReponse v) => v.questionTitle;
  static const Field<ReportQuestionReponse, String> _f$questionTitle =
      Field('questionTitle', _$questionTitle, opt: true);
  static String? _$studentName(ReportQuestionReponse v) => v.studentName;
  static const Field<ReportQuestionReponse, String> _f$studentName =
      Field('studentName', _$studentName, opt: true);

  @override
  final MappableFields<ReportQuestionReponse> fields = const {
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

  static ReportQuestionReponse _instantiate(DecodingData data) {
    return ReportQuestionReponse(
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

  static ReportQuestionReponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReportQuestionReponse>(map);
  }

  static ReportQuestionReponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<ReportQuestionReponse>(json);
  }
}

mixin ReportQuestionReponseMappable {
  String toJsonString() {
    return ReportQuestionReponseMapper.ensureInitialized()
        .encodeJson<ReportQuestionReponse>(this as ReportQuestionReponse);
  }

  Map<String, dynamic> toJson() {
    return ReportQuestionReponseMapper.ensureInitialized()
        .encodeMap<ReportQuestionReponse>(this as ReportQuestionReponse);
  }

  ReportQuestionReponseCopyWith<ReportQuestionReponse, ReportQuestionReponse,
          ReportQuestionReponse>
      get copyWith => _ReportQuestionReponseCopyWithImpl(
          this as ReportQuestionReponse, $identity, $identity);
  @override
  String toString() {
    return ReportQuestionReponseMapper.ensureInitialized()
        .stringifyValue(this as ReportQuestionReponse);
  }

  @override
  bool operator ==(Object other) {
    return ReportQuestionReponseMapper.ensureInitialized()
        .equalsValue(this as ReportQuestionReponse, other);
  }

  @override
  int get hashCode {
    return ReportQuestionReponseMapper.ensureInitialized()
        .hashValue(this as ReportQuestionReponse);
  }
}

extension ReportQuestionReponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReportQuestionReponse, $Out> {
  ReportQuestionReponseCopyWith<$R, ReportQuestionReponse, $Out>
      get $asReportQuestionReponse =>
          $base.as((v, t, t2) => _ReportQuestionReponseCopyWithImpl(v, t, t2));
}

abstract class ReportQuestionReponseCopyWith<
    $R,
    $In extends ReportQuestionReponse,
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
  ReportQuestionReponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ReportQuestionReponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReportQuestionReponse, $Out>
    implements ReportQuestionReponseCopyWith<$R, ReportQuestionReponse, $Out> {
  _ReportQuestionReponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReportQuestionReponse> $mapper =
      ReportQuestionReponseMapper.ensureInitialized();
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
  ReportQuestionReponse $make(CopyWithData data) => ReportQuestionReponse(
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
  ReportQuestionReponseCopyWith<$R2, ReportQuestionReponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ReportQuestionReponseCopyWithImpl($value, $cast, t);
}
