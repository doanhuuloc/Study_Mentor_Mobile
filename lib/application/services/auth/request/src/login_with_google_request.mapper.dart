// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_with_google_request.dart';

class LoginWithGoogleRequestMapper
    extends ClassMapperBase<LoginWithGoogleRequest> {
  LoginWithGoogleRequestMapper._();

  static LoginWithGoogleRequestMapper? _instance;
  static LoginWithGoogleRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginWithGoogleRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginWithGoogleRequest';

  static String? _$accessToken(LoginWithGoogleRequest v) => v.accessToken;
  static const Field<LoginWithGoogleRequest, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$refreshToken(LoginWithGoogleRequest v) => v.refreshToken;
  static const Field<LoginWithGoogleRequest, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, opt: true);

  @override
  final MappableFields<LoginWithGoogleRequest> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static LoginWithGoogleRequest _instantiate(DecodingData data) {
    return LoginWithGoogleRequest(
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginWithGoogleRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginWithGoogleRequest>(map);
  }

  static LoginWithGoogleRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<LoginWithGoogleRequest>(json);
  }
}

mixin LoginWithGoogleRequestMappable {
  String toJsonString() {
    return LoginWithGoogleRequestMapper.ensureInitialized()
        .encodeJson<LoginWithGoogleRequest>(this as LoginWithGoogleRequest);
  }

  Map<String, dynamic> toJson() {
    return LoginWithGoogleRequestMapper.ensureInitialized()
        .encodeMap<LoginWithGoogleRequest>(this as LoginWithGoogleRequest);
  }

  LoginWithGoogleRequestCopyWith<LoginWithGoogleRequest, LoginWithGoogleRequest,
          LoginWithGoogleRequest>
      get copyWith => _LoginWithGoogleRequestCopyWithImpl(
          this as LoginWithGoogleRequest, $identity, $identity);
  @override
  String toString() {
    return LoginWithGoogleRequestMapper.ensureInitialized()
        .stringifyValue(this as LoginWithGoogleRequest);
  }

  @override
  bool operator ==(Object other) {
    return LoginWithGoogleRequestMapper.ensureInitialized()
        .equalsValue(this as LoginWithGoogleRequest, other);
  }

  @override
  int get hashCode {
    return LoginWithGoogleRequestMapper.ensureInitialized()
        .hashValue(this as LoginWithGoogleRequest);
  }
}

extension LoginWithGoogleRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginWithGoogleRequest, $Out> {
  LoginWithGoogleRequestCopyWith<$R, LoginWithGoogleRequest, $Out>
      get $asLoginWithGoogleRequest =>
          $base.as((v, t, t2) => _LoginWithGoogleRequestCopyWithImpl(v, t, t2));
}

abstract class LoginWithGoogleRequestCopyWith<
    $R,
    $In extends LoginWithGoogleRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? refreshToken});
  LoginWithGoogleRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoginWithGoogleRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginWithGoogleRequest, $Out>
    implements
        LoginWithGoogleRequestCopyWith<$R, LoginWithGoogleRequest, $Out> {
  _LoginWithGoogleRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginWithGoogleRequest> $mapper =
      LoginWithGoogleRequestMapper.ensureInitialized();
  @override
  $R call({Object? accessToken = $none, Object? refreshToken = $none}) =>
      $apply(FieldCopyWithData({
        if (accessToken != $none) #accessToken: accessToken,
        if (refreshToken != $none) #refreshToken: refreshToken
      }));
  @override
  LoginWithGoogleRequest $make(CopyWithData data) => LoginWithGoogleRequest(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  LoginWithGoogleRequestCopyWith<$R2, LoginWithGoogleRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LoginWithGoogleRequestCopyWithImpl($value, $cast, t);
}
