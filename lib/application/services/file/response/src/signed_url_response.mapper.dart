// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'signed_url_response.dart';

class SignedUrlResponseMapper extends ClassMapperBase<SignedUrlResponse> {
  SignedUrlResponseMapper._();

  static SignedUrlResponseMapper? _instance;
  static SignedUrlResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignedUrlResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SignedUrlResponse';

  static String? _$fileKey(SignedUrlResponse v) => v.fileKey;
  static const Field<SignedUrlResponse, String> _f$fileKey =
      Field('fileKey', _$fileKey, opt: true);
  static String? _$fileName(SignedUrlResponse v) => v.fileName;
  static const Field<SignedUrlResponse, String> _f$fileName =
      Field('fileName', _$fileName, opt: true);
  static String? _$url(SignedUrlResponse v) => v.url;
  static const Field<SignedUrlResponse, String> _f$url =
      Field('url', _$url, opt: true);

  @override
  final MappableFields<SignedUrlResponse> fields = const {
    #fileKey: _f$fileKey,
    #fileName: _f$fileName,
    #url: _f$url,
  };

  static SignedUrlResponse _instantiate(DecodingData data) {
    return SignedUrlResponse(
        fileKey: data.dec(_f$fileKey),
        fileName: data.dec(_f$fileName),
        url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;

  static SignedUrlResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignedUrlResponse>(map);
  }

  static SignedUrlResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<SignedUrlResponse>(json);
  }
}

mixin SignedUrlResponseMappable {
  String toJsonString() {
    return SignedUrlResponseMapper.ensureInitialized()
        .encodeJson<SignedUrlResponse>(this as SignedUrlResponse);
  }

  Map<String, dynamic> toJson() {
    return SignedUrlResponseMapper.ensureInitialized()
        .encodeMap<SignedUrlResponse>(this as SignedUrlResponse);
  }

  SignedUrlResponseCopyWith<SignedUrlResponse, SignedUrlResponse,
          SignedUrlResponse>
      get copyWith => _SignedUrlResponseCopyWithImpl(
          this as SignedUrlResponse, $identity, $identity);
  @override
  String toString() {
    return SignedUrlResponseMapper.ensureInitialized()
        .stringifyValue(this as SignedUrlResponse);
  }

  @override
  bool operator ==(Object other) {
    return SignedUrlResponseMapper.ensureInitialized()
        .equalsValue(this as SignedUrlResponse, other);
  }

  @override
  int get hashCode {
    return SignedUrlResponseMapper.ensureInitialized()
        .hashValue(this as SignedUrlResponse);
  }
}

extension SignedUrlResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SignedUrlResponse, $Out> {
  SignedUrlResponseCopyWith<$R, SignedUrlResponse, $Out>
      get $asSignedUrlResponse =>
          $base.as((v, t, t2) => _SignedUrlResponseCopyWithImpl(v, t, t2));
}

abstract class SignedUrlResponseCopyWith<$R, $In extends SignedUrlResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fileKey, String? fileName, String? url});
  SignedUrlResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SignedUrlResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignedUrlResponse, $Out>
    implements SignedUrlResponseCopyWith<$R, SignedUrlResponse, $Out> {
  _SignedUrlResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignedUrlResponse> $mapper =
      SignedUrlResponseMapper.ensureInitialized();
  @override
  $R call(
          {Object? fileKey = $none,
          Object? fileName = $none,
          Object? url = $none}) =>
      $apply(FieldCopyWithData({
        if (fileKey != $none) #fileKey: fileKey,
        if (fileName != $none) #fileName: fileName,
        if (url != $none) #url: url
      }));
  @override
  SignedUrlResponse $make(CopyWithData data) => SignedUrlResponse(
      fileKey: data.get(#fileKey, or: $value.fileKey),
      fileName: data.get(#fileName, or: $value.fileName),
      url: data.get(#url, or: $value.url));

  @override
  SignedUrlResponseCopyWith<$R2, SignedUrlResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SignedUrlResponseCopyWithImpl($value, $cast, t);
}
