// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'file_request.dart';

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

  static String? _$fileName(FileRequest v) => v.fileName;
  static const Field<FileRequest, String> _f$fileName =
      Field('fileName', _$fileName, opt: true);
  static String? _$fileKey(FileRequest v) => v.fileKey;
  static const Field<FileRequest, String> _f$fileKey =
      Field('fileKey', _$fileKey, opt: true);

  @override
  final MappableFields<FileRequest> fields = const {
    #fileName: _f$fileName,
    #fileKey: _f$fileKey,
  };

  static FileRequest _instantiate(DecodingData data) {
    return FileRequest(
        fileName: data.dec(_f$fileName), fileKey: data.dec(_f$fileKey));
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
  $R call({String? fileName, String? fileKey});
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
  $R call({Object? fileName = $none, Object? fileKey = $none}) =>
      $apply(FieldCopyWithData({
        if (fileName != $none) #fileName: fileName,
        if (fileKey != $none) #fileKey: fileKey
      }));
  @override
  FileRequest $make(CopyWithData data) => FileRequest(
      fileName: data.get(#fileName, or: $value.fileName),
      fileKey: data.get(#fileKey, or: $value.fileKey));

  @override
  FileRequestCopyWith<$R2, FileRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FileRequestCopyWithImpl($value, $cast, t);
}
