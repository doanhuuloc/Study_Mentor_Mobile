// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'upload_file_request.dart';

class UploadFileRequestMapper extends ClassMapperBase<UploadFileRequest> {
  UploadFileRequestMapper._();

  static UploadFileRequestMapper? _instance;
  static UploadFileRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UploadFileRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UploadFileRequest';

  static File _$file(UploadFileRequest v) => v.file;
  static const Field<UploadFileRequest, File> _f$file = Field('file', _$file);
  static String _$signedUrl(UploadFileRequest v) => v.signedUrl;
  static const Field<UploadFileRequest, String> _f$signedUrl =
      Field('signedUrl', _$signedUrl);

  @override
  final MappableFields<UploadFileRequest> fields = const {
    #file: _f$file,
    #signedUrl: _f$signedUrl,
  };

  static UploadFileRequest _instantiate(DecodingData data) {
    return UploadFileRequest(
        file: data.dec(_f$file), signedUrl: data.dec(_f$signedUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static UploadFileRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UploadFileRequest>(map);
  }

  static UploadFileRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<UploadFileRequest>(json);
  }
}

mixin UploadFileRequestMappable {
  String toJsonString() {
    return UploadFileRequestMapper.ensureInitialized()
        .encodeJson<UploadFileRequest>(this as UploadFileRequest);
  }

  Map<String, dynamic> toJson() {
    return UploadFileRequestMapper.ensureInitialized()
        .encodeMap<UploadFileRequest>(this as UploadFileRequest);
  }

  UploadFileRequestCopyWith<UploadFileRequest, UploadFileRequest,
          UploadFileRequest>
      get copyWith => _UploadFileRequestCopyWithImpl(
          this as UploadFileRequest, $identity, $identity);
  @override
  String toString() {
    return UploadFileRequestMapper.ensureInitialized()
        .stringifyValue(this as UploadFileRequest);
  }

  @override
  bool operator ==(Object other) {
    return UploadFileRequestMapper.ensureInitialized()
        .equalsValue(this as UploadFileRequest, other);
  }

  @override
  int get hashCode {
    return UploadFileRequestMapper.ensureInitialized()
        .hashValue(this as UploadFileRequest);
  }
}

extension UploadFileRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UploadFileRequest, $Out> {
  UploadFileRequestCopyWith<$R, UploadFileRequest, $Out>
      get $asUploadFileRequest =>
          $base.as((v, t, t2) => _UploadFileRequestCopyWithImpl(v, t, t2));
}

abstract class UploadFileRequestCopyWith<$R, $In extends UploadFileRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({File? file, String? signedUrl});
  UploadFileRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UploadFileRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UploadFileRequest, $Out>
    implements UploadFileRequestCopyWith<$R, UploadFileRequest, $Out> {
  _UploadFileRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UploadFileRequest> $mapper =
      UploadFileRequestMapper.ensureInitialized();
  @override
  $R call({File? file, String? signedUrl}) => $apply(FieldCopyWithData({
        if (file != null) #file: file,
        if (signedUrl != null) #signedUrl: signedUrl
      }));
  @override
  UploadFileRequest $make(CopyWithData data) => UploadFileRequest(
      file: data.get(#file, or: $value.file),
      signedUrl: data.get(#signedUrl, or: $value.signedUrl));

  @override
  UploadFileRequestCopyWith<$R2, UploadFileRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UploadFileRequestCopyWithImpl($value, $cast, t);
}
