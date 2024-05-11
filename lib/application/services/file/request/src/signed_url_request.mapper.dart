// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'signed_url_request.dart';

class SignedUrlRequestMapper extends ClassMapperBase<SignedUrlRequest> {
  SignedUrlRequestMapper._();

  static SignedUrlRequestMapper? _instance;
  static SignedUrlRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignedUrlRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SignedUrlRequest';

  static String? _$fileName(SignedUrlRequest v) => v.fileName;
  static const Field<SignedUrlRequest, String> _f$fileName =
      Field('fileName', _$fileName, opt: true);

  @override
  final MappableFields<SignedUrlRequest> fields = const {
    #fileName: _f$fileName,
  };

  static SignedUrlRequest _instantiate(DecodingData data) {
    return SignedUrlRequest(fileName: data.dec(_f$fileName));
  }

  @override
  final Function instantiate = _instantiate;

  static SignedUrlRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignedUrlRequest>(map);
  }

  static SignedUrlRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<SignedUrlRequest>(json);
  }
}

mixin SignedUrlRequestMappable {
  String toJsonString() {
    return SignedUrlRequestMapper.ensureInitialized()
        .encodeJson<SignedUrlRequest>(this as SignedUrlRequest);
  }

  Map<String, dynamic> toJson() {
    return SignedUrlRequestMapper.ensureInitialized()
        .encodeMap<SignedUrlRequest>(this as SignedUrlRequest);
  }

  SignedUrlRequestCopyWith<SignedUrlRequest, SignedUrlRequest, SignedUrlRequest>
      get copyWith => _SignedUrlRequestCopyWithImpl(
          this as SignedUrlRequest, $identity, $identity);
  @override
  String toString() {
    return SignedUrlRequestMapper.ensureInitialized()
        .stringifyValue(this as SignedUrlRequest);
  }

  @override
  bool operator ==(Object other) {
    return SignedUrlRequestMapper.ensureInitialized()
        .equalsValue(this as SignedUrlRequest, other);
  }

  @override
  int get hashCode {
    return SignedUrlRequestMapper.ensureInitialized()
        .hashValue(this as SignedUrlRequest);
  }
}

extension SignedUrlRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SignedUrlRequest, $Out> {
  SignedUrlRequestCopyWith<$R, SignedUrlRequest, $Out>
      get $asSignedUrlRequest =>
          $base.as((v, t, t2) => _SignedUrlRequestCopyWithImpl(v, t, t2));
}

abstract class SignedUrlRequestCopyWith<$R, $In extends SignedUrlRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fileName});
  SignedUrlRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SignedUrlRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignedUrlRequest, $Out>
    implements SignedUrlRequestCopyWith<$R, SignedUrlRequest, $Out> {
  _SignedUrlRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignedUrlRequest> $mapper =
      SignedUrlRequestMapper.ensureInitialized();
  @override
  $R call({Object? fileName = $none}) =>
      $apply(FieldCopyWithData({if (fileName != $none) #fileName: fileName}));
  @override
  SignedUrlRequest $make(CopyWithData data) =>
      SignedUrlRequest(fileName: data.get(#fileName, or: $value.fileName));

  @override
  SignedUrlRequestCopyWith<$R2, SignedUrlRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SignedUrlRequestCopyWithImpl($value, $cast, t);
}
