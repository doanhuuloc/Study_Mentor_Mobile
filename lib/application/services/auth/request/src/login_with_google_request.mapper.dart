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

  static String? _$email(LoginWithGoogleRequest v) => v.email;
  static const Field<LoginWithGoogleRequest, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$fullName(LoginWithGoogleRequest v) => v.fullName;
  static const Field<LoginWithGoogleRequest, String> _f$fullName =
      Field('fullName', _$fullName, opt: true);
  static String? _$fcmToken(LoginWithGoogleRequest v) => v.fcmToken;
  static const Field<LoginWithGoogleRequest, String> _f$fcmToken =
      Field('fcmToken', _$fcmToken, opt: true);

  @override
  final MappableFields<LoginWithGoogleRequest> fields = const {
    #email: _f$email,
    #fullName: _f$fullName,
    #fcmToken: _f$fcmToken,
  };

  static LoginWithGoogleRequest _instantiate(DecodingData data) {
    return LoginWithGoogleRequest(
        email: data.dec(_f$email),
        fullName: data.dec(_f$fullName),
        fcmToken: data.dec(_f$fcmToken));
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
  $R call({String? email, String? fullName, String? fcmToken});
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
  $R call(
          {Object? email = $none,
          Object? fullName = $none,
          Object? fcmToken = $none}) =>
      $apply(FieldCopyWithData({
        if (email != $none) #email: email,
        if (fullName != $none) #fullName: fullName,
        if (fcmToken != $none) #fcmToken: fcmToken
      }));
  @override
  LoginWithGoogleRequest $make(CopyWithData data) => LoginWithGoogleRequest(
      email: data.get(#email, or: $value.email),
      fullName: data.get(#fullName, or: $value.fullName),
      fcmToken: data.get(#fcmToken, or: $value.fcmToken));

  @override
  LoginWithGoogleRequestCopyWith<$R2, LoginWithGoogleRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LoginWithGoogleRequestCopyWithImpl($value, $cast, t);
}
