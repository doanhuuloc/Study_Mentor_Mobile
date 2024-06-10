// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_question_request.dart';

class CreateQuestionRequestMapper
    extends ClassMapperBase<CreateQuestionRequest> {
  CreateQuestionRequestMapper._();

  static CreateQuestionRequestMapper? _instance;
  static CreateQuestionRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateQuestionRequestMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreateQuestionRequest';

  static String _$subjectId(CreateQuestionRequest v) => v.subjectId;
  static const Field<CreateQuestionRequest, String> _f$subjectId =
      Field('subjectId', _$subjectId);
  static int _$numberOfStar(CreateQuestionRequest v) => v.numberOfStar;
  static const Field<CreateQuestionRequest, int> _f$numberOfStar =
      Field('numberOfStar', _$numberOfStar);
  static int _$timeFindTutor(CreateQuestionRequest v) => v.timeFindTutor;
  static const Field<CreateQuestionRequest, int> _f$timeFindTutor =
      Field('timeFindTutor', _$timeFindTutor);
  static String _$content(CreateQuestionRequest v) => v.content;
  static const Field<CreateQuestionRequest, String> _f$content =
      Field('content', _$content);
  static List<FileRequest> _$attachFiles(CreateQuestionRequest v) =>
      v.attachFiles;
  static const Field<CreateQuestionRequest, List<FileRequest>> _f$attachFiles =
      Field('attachFiles', _$attachFiles);
  static String? _$voucherCode(CreateQuestionRequest v) => v.voucherCode;
  static const Field<CreateQuestionRequest, String> _f$voucherCode =
      Field('voucherCode', _$voucherCode, opt: true);
  static int? _$timeMeeting(CreateQuestionRequest v) => v.timeMeeting;
  static const Field<CreateQuestionRequest, int> _f$timeMeeting =
      Field('timeMeeting', _$timeMeeting, opt: true);

  @override
  final MappableFields<CreateQuestionRequest> fields = const {
    #subjectId: _f$subjectId,
    #numberOfStar: _f$numberOfStar,
    #timeFindTutor: _f$timeFindTutor,
    #content: _f$content,
    #attachFiles: _f$attachFiles,
    #voucherCode: _f$voucherCode,
    #timeMeeting: _f$timeMeeting,
  };

  static CreateQuestionRequest _instantiate(DecodingData data) {
    return CreateQuestionRequest(
        subjectId: data.dec(_f$subjectId),
        numberOfStar: data.dec(_f$numberOfStar),
        timeFindTutor: data.dec(_f$timeFindTutor),
        content: data.dec(_f$content),
        attachFiles: data.dec(_f$attachFiles),
        voucherCode: data.dec(_f$voucherCode),
        timeMeeting: data.dec(_f$timeMeeting));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateQuestionRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateQuestionRequest>(map);
  }

  static CreateQuestionRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateQuestionRequest>(json);
  }
}

mixin CreateQuestionRequestMappable {
  String toJsonString() {
    return CreateQuestionRequestMapper.ensureInitialized()
        .encodeJson<CreateQuestionRequest>(this as CreateQuestionRequest);
  }

  Map<String, dynamic> toJson() {
    return CreateQuestionRequestMapper.ensureInitialized()
        .encodeMap<CreateQuestionRequest>(this as CreateQuestionRequest);
  }

  CreateQuestionRequestCopyWith<CreateQuestionRequest, CreateQuestionRequest,
          CreateQuestionRequest>
      get copyWith => _CreateQuestionRequestCopyWithImpl(
          this as CreateQuestionRequest, $identity, $identity);
  @override
  String toString() {
    return CreateQuestionRequestMapper.ensureInitialized()
        .stringifyValue(this as CreateQuestionRequest);
  }

  @override
  bool operator ==(Object other) {
    return CreateQuestionRequestMapper.ensureInitialized()
        .equalsValue(this as CreateQuestionRequest, other);
  }

  @override
  int get hashCode {
    return CreateQuestionRequestMapper.ensureInitialized()
        .hashValue(this as CreateQuestionRequest);
  }
}

extension CreateQuestionRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateQuestionRequest, $Out> {
  CreateQuestionRequestCopyWith<$R, CreateQuestionRequest, $Out>
      get $asCreateQuestionRequest =>
          $base.as((v, t, t2) => _CreateQuestionRequestCopyWithImpl(v, t, t2));
}

abstract class CreateQuestionRequestCopyWith<
    $R,
    $In extends CreateQuestionRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileRequest,
      FileRequestCopyWith<$R, FileRequest, FileRequest>> get attachFiles;
  $R call(
      {String? subjectId,
      int? numberOfStar,
      int? timeFindTutor,
      String? content,
      List<FileRequest>? attachFiles,
      String? voucherCode,
      int? timeMeeting});
  CreateQuestionRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateQuestionRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateQuestionRequest, $Out>
    implements CreateQuestionRequestCopyWith<$R, CreateQuestionRequest, $Out> {
  _CreateQuestionRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateQuestionRequest> $mapper =
      CreateQuestionRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FileRequest,
          FileRequestCopyWith<$R, FileRequest, FileRequest>>
      get attachFiles => ListCopyWith($value.attachFiles,
          (v, t) => v.copyWith.$chain(t), (v) => call(attachFiles: v));
  @override
  $R call(
          {String? subjectId,
          int? numberOfStar,
          int? timeFindTutor,
          String? content,
          List<FileRequest>? attachFiles,
          Object? voucherCode = $none,
          Object? timeMeeting = $none}) =>
      $apply(FieldCopyWithData({
        if (subjectId != null) #subjectId: subjectId,
        if (numberOfStar != null) #numberOfStar: numberOfStar,
        if (timeFindTutor != null) #timeFindTutor: timeFindTutor,
        if (content != null) #content: content,
        if (attachFiles != null) #attachFiles: attachFiles,
        if (voucherCode != $none) #voucherCode: voucherCode,
        if (timeMeeting != $none) #timeMeeting: timeMeeting
      }));
  @override
  CreateQuestionRequest $make(CopyWithData data) => CreateQuestionRequest(
      subjectId: data.get(#subjectId, or: $value.subjectId),
      numberOfStar: data.get(#numberOfStar, or: $value.numberOfStar),
      timeFindTutor: data.get(#timeFindTutor, or: $value.timeFindTutor),
      content: data.get(#content, or: $value.content),
      attachFiles: data.get(#attachFiles, or: $value.attachFiles),
      voucherCode: data.get(#voucherCode, or: $value.voucherCode),
      timeMeeting: data.get(#timeMeeting, or: $value.timeMeeting));

  @override
  CreateQuestionRequestCopyWith<$R2, CreateQuestionRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateQuestionRequestCopyWithImpl($value, $cast, t);
}
