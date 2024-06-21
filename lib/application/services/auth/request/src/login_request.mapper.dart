// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_request.dart';

class LoginRequestMapper extends ClassMapperBase<LoginRequest> {
  LoginRequestMapper._();

  static LoginRequestMapper? _instance;
  static LoginRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginRequest';

  static String _$email(LoginRequest v) => v.email;
  static const Field<LoginRequest, String> _f$email = Field('email', _$email);
  static String _$password(LoginRequest v) => v.password;
  static const Field<LoginRequest, String> _f$password =
      Field('password', _$password);
  static String? _$fcmToken(LoginRequest v) => v.fcmToken;
  static const Field<LoginRequest, String> _f$fcmToken =
      Field('fcmToken', _$fcmToken, opt: true);

  @override
  final MappableFields<LoginRequest> fields = const {
    #email: _f$email,
    #password: _f$password,
    #fcmToken: _f$fcmToken,
  };

  static LoginRequest _instantiate(DecodingData data) {
    return LoginRequest(
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        fcmToken: data.dec(_f$fcmToken));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginRequest>(map);
  }

  static LoginRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<LoginRequest>(json);
  }
}

mixin LoginRequestMappable {
  String toJsonString() {
    return LoginRequestMapper.ensureInitialized()
        .encodeJson<LoginRequest>(this as LoginRequest);
  }

  Map<String, dynamic> toJson() {
    return LoginRequestMapper.ensureInitialized()
        .encodeMap<LoginRequest>(this as LoginRequest);
  }

  LoginRequestCopyWith<LoginRequest, LoginRequest, LoginRequest> get copyWith =>
      _LoginRequestCopyWithImpl(this as LoginRequest, $identity, $identity);
  @override
  String toString() {
    return LoginRequestMapper.ensureInitialized()
        .stringifyValue(this as LoginRequest);
  }

  @override
  bool operator ==(Object other) {
    return LoginRequestMapper.ensureInitialized()
        .equalsValue(this as LoginRequest, other);
  }

  @override
  int get hashCode {
    return LoginRequestMapper.ensureInitialized()
        .hashValue(this as LoginRequest);
  }
}

extension LoginRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginRequest, $Out> {
  LoginRequestCopyWith<$R, LoginRequest, $Out> get $asLoginRequest =>
      $base.as((v, t, t2) => _LoginRequestCopyWithImpl(v, t, t2));
}

abstract class LoginRequestCopyWith<$R, $In extends LoginRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password, String? fcmToken});
  LoginRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginRequest, $Out>
    implements LoginRequestCopyWith<$R, LoginRequest, $Out> {
  _LoginRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginRequest> $mapper =
      LoginRequestMapper.ensureInitialized();
  @override
  $R call({String? email, String? password, Object? fcmToken = $none}) =>
      $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (password != null) #password: password,
        if (fcmToken != $none) #fcmToken: fcmToken
      }));
  @override
  LoginRequest $make(CopyWithData data) => LoginRequest(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      fcmToken: data.get(#fcmToken, or: $value.fcmToken));

  @override
  LoginRequestCopyWith<$R2, LoginRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginRequestCopyWithImpl($value, $cast, t);
}
