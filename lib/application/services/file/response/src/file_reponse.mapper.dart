// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'file_reponse.dart';

class FileReponseMapper extends ClassMapperBase<FileReponse> {
  FileReponseMapper._();

  static FileReponseMapper? _instance;
  static FileReponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FileReponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FileReponse';

  static String? _$fileName(FileReponse v) => v.fileName;
  static const Field<FileReponse, String> _f$fileName =
      Field('fileName', _$fileName, opt: true);
  static String? _$fileKey(FileReponse v) => v.fileKey;
  static const Field<FileReponse, String> _f$fileKey =
      Field('fileKey', _$fileKey, opt: true);

  @override
  final MappableFields<FileReponse> fields = const {
    #fileName: _f$fileName,
    #fileKey: _f$fileKey,
  };

  static FileReponse _instantiate(DecodingData data) {
    return FileReponse(
        fileName: data.dec(_f$fileName), fileKey: data.dec(_f$fileKey));
  }

  @override
  final Function instantiate = _instantiate;

  static FileReponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FileReponse>(map);
  }

  static FileReponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<FileReponse>(json);
  }
}

mixin FileReponseMappable {
  String toJsonString() {
    return FileReponseMapper.ensureInitialized()
        .encodeJson<FileReponse>(this as FileReponse);
  }

  Map<String, dynamic> toJson() {
    return FileReponseMapper.ensureInitialized()
        .encodeMap<FileReponse>(this as FileReponse);
  }

  FileReponseCopyWith<FileReponse, FileReponse, FileReponse> get copyWith =>
      _FileReponseCopyWithImpl(this as FileReponse, $identity, $identity);
  @override
  String toString() {
    return FileReponseMapper.ensureInitialized()
        .stringifyValue(this as FileReponse);
  }

  @override
  bool operator ==(Object other) {
    return FileReponseMapper.ensureInitialized()
        .equalsValue(this as FileReponse, other);
  }

  @override
  int get hashCode {
    return FileReponseMapper.ensureInitialized().hashValue(this as FileReponse);
  }
}

extension FileReponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FileReponse, $Out> {
  FileReponseCopyWith<$R, FileReponse, $Out> get $asFileReponse =>
      $base.as((v, t, t2) => _FileReponseCopyWithImpl(v, t, t2));
}

abstract class FileReponseCopyWith<$R, $In extends FileReponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fileName, String? fileKey});
  FileReponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FileReponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FileReponse, $Out>
    implements FileReponseCopyWith<$R, FileReponse, $Out> {
  _FileReponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FileReponse> $mapper =
      FileReponseMapper.ensureInitialized();
  @override
  $R call({Object? fileName = $none, Object? fileKey = $none}) =>
      $apply(FieldCopyWithData({
        if (fileName != $none) #fileName: fileName,
        if (fileKey != $none) #fileKey: fileKey
      }));
  @override
  FileReponse $make(CopyWithData data) => FileReponse(
      fileName: data.get(#fileName, or: $value.fileName),
      fileKey: data.get(#fileKey, or: $value.fileKey));

  @override
  FileReponseCopyWith<$R2, FileReponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FileReponseCopyWithImpl($value, $cast, t);
}
