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

  static String _$userId(CreateQuestionRequest v) => v.userId;
  static const Field<CreateQuestionRequest, String> _f$userId =
      Field('userId', _$userId);
  static String _$subjectId(CreateQuestionRequest v) => v.subjectId;
  static const Field<CreateQuestionRequest, String> _f$subjectId =
      Field('subjectId', _$subjectId);
  static int _$timeAnswer(CreateQuestionRequest v) => v.timeAnswer;
  static const Field<CreateQuestionRequest, int> _f$timeAnswer =
      Field('timeAnswer', _$timeAnswer);
  static String _$content(CreateQuestionRequest v) => v.content;
  static const Field<CreateQuestionRequest, String> _f$content =
      Field('content', _$content);
  static List<FileRequest> _$attachFiles(CreateQuestionRequest v) =>
      v.attachFiles;
  static const Field<CreateQuestionRequest, List<FileRequest>> _f$attachFiles =
      Field('attachFiles', _$attachFiles);

  @override
  final MappableFields<CreateQuestionRequest> fields = const {
    #userId: _f$userId,
    #subjectId: _f$subjectId,
    #timeAnswer: _f$timeAnswer,
    #content: _f$content,
    #attachFiles: _f$attachFiles,
  };

  static CreateQuestionRequest _instantiate(DecodingData data) {
    return CreateQuestionRequest(
        userId: data.dec(_f$userId),
        subjectId: data.dec(_f$subjectId),
        timeAnswer: data.dec(_f$timeAnswer),
        content: data.dec(_f$content),
        attachFiles: data.dec(_f$attachFiles));
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
      {String? userId,
      String? subjectId,
      int? timeAnswer,
      String? content,
      List<FileRequest>? attachFiles});
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
          {String? userId,
          String? subjectId,
          int? timeAnswer,
          String? content,
          List<FileRequest>? attachFiles}) =>
      $apply(FieldCopyWithData({
        if (userId != null) #userId: userId,
        if (subjectId != null) #subjectId: subjectId,
        if (timeAnswer != null) #timeAnswer: timeAnswer,
        if (content != null) #content: content,
        if (attachFiles != null) #attachFiles: attachFiles
      }));
  @override
  CreateQuestionRequest $make(CopyWithData data) => CreateQuestionRequest(
      userId: data.get(#userId, or: $value.userId),
      subjectId: data.get(#subjectId, or: $value.subjectId),
      timeAnswer: data.get(#timeAnswer, or: $value.timeAnswer),
      content: data.get(#content, or: $value.content),
      attachFiles: data.get(#attachFiles, or: $value.attachFiles));

  @override
  CreateQuestionRequestCopyWith<$R2, CreateQuestionRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateQuestionRequestCopyWithImpl($value, $cast, t);
}

class FileRequestMapper extends ClassMapperBase<FileRequest> {
  FileRequestMapper._();

  static FileRequestMapper? _instance;
  static FileRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FileRequest';

  static String _$fileKey(FileRequest v) => v.fileKey;
  static const Field<FileRequest, String> _f$fileKey =
      Field('fileKey', _$fileKey);
  static String _$fileName(FileRequest v) => v.fileName;
  static const Field<FileRequest, String> _f$fileName =
      Field('fileName', _$fileName);

  @override
  final MappableFields<FileRequest> fields = const {
    #fileKey: _f$fileKey,
    #fileName: _f$fileName,
  };

  static FileRequest _instantiate(DecodingData data) {
    return FileRequest(
        fileKey: data.dec(_f$fileKey), fileName: data.dec(_f$fileName));
  }

  @override
  final Function instantiate = _instantiate;

  static FileRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FileRequest>(map);
  }

  static FileRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<FileRequest>(json);
  }
}

mixin FileRequestMappable {
  String toJsonString() {
    return FileRequestMapper.ensureInitialized()
        .encodeJson<FileRequest>(this as FileRequest);
  }

  Map<String, dynamic> toJson() {
    return FileRequestMapper.ensureInitialized()
        .encodeMap<FileRequest>(this as FileRequest);
  }

  FileRequestCopyWith<FileRequest, FileRequest, FileRequest> get copyWith =>
      _FileRequestCopyWithImpl(this as FileRequest, $identity, $identity);
  @override
  String toString() {
    return FileRequestMapper.ensureInitialized()
        .stringifyValue(this as FileRequest);
  }

  @override
  bool operator ==(Object other) {
    return FileRequestMapper.ensureInitialized()
        .equalsValue(this as FileRequest, other);
  }

  @override
  int get hashCode {
    return FileRequestMapper.ensureInitialized().hashValue(this as FileRequest);
  }
}

extension FileRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FileRequest, $Out> {
  FileRequestCopyWith<$R, FileRequest, $Out> get $asFileRequest =>
      $base.as((v, t, t2) => _FileRequestCopyWithImpl(v, t, t2));
}

abstract class FileRequestCopyWith<$R, $In extends FileRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fileKey, String? fileName});
  FileRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FileRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FileRequest, $Out>
    implements FileRequestCopyWith<$R, FileRequest, $Out> {
  _FileRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FileRequest> $mapper =
      FileRequestMapper.ensureInitialized();
  @override
  $R call({String? fileKey, String? fileName}) => $apply(FieldCopyWithData({
        if (fileKey != null) #fileKey: fileKey,
        if (fileName != null) #fileName: fileName
      }));
  @override
  FileRequest $make(CopyWithData data) => FileRequest(
      fileKey: data.get(#fileKey, or: $value.fileKey),
      fileName: data.get(#fileName, or: $value.fileName));

  @override
  FileRequestCopyWith<$R2, FileRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FileRequestCopyWithImpl($value, $cast, t);
}
