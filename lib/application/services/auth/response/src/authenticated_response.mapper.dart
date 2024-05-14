// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'authenticated_response.dart';

class AuthenticatedResponseMapper
    extends ClassMapperBase<AuthenticatedResponse> {
  AuthenticatedResponseMapper._();

  static AuthenticatedResponseMapper? _instance;
  static AuthenticatedResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthenticatedResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthenticatedResponse';

  static String? _$accessToken(AuthenticatedResponse v) => v.accessToken;
  static const Field<AuthenticatedResponse, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$refreshToken(AuthenticatedResponse v) => v.refreshToken;
  static const Field<AuthenticatedResponse, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, opt: true);

  @override
  final MappableFields<AuthenticatedResponse> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static AuthenticatedResponse _instantiate(DecodingData data) {
    return AuthenticatedResponse(
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthenticatedResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthenticatedResponse>(map);
  }

  static AuthenticatedResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<AuthenticatedResponse>(json);
  }
}

mixin AuthenticatedResponseMappable {
  String toJsonString() {
    return AuthenticatedResponseMapper.ensureInitialized()
        .encodeJson<AuthenticatedResponse>(this as AuthenticatedResponse);
  }

  Map<String, dynamic> toJson() {
    return AuthenticatedResponseMapper.ensureInitialized()
        .encodeMap<AuthenticatedResponse>(this as AuthenticatedResponse);
  }

  AuthenticatedResponseCopyWith<AuthenticatedResponse, AuthenticatedResponse,
          AuthenticatedResponse>
      get copyWith => _AuthenticatedResponseCopyWithImpl(
          this as AuthenticatedResponse, $identity, $identity);
  @override
  String toString() {
    return AuthenticatedResponseMapper.ensureInitialized()
        .stringifyValue(this as AuthenticatedResponse);
  }

  @override
  bool operator ==(Object other) {
    return AuthenticatedResponseMapper.ensureInitialized()
        .equalsValue(this as AuthenticatedResponse, other);
  }

  @override
  int get hashCode {
    return AuthenticatedResponseMapper.ensureInitialized()
        .hashValue(this as AuthenticatedResponse);
  }
}

extension AuthenticatedResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthenticatedResponse, $Out> {
  AuthenticatedResponseCopyWith<$R, AuthenticatedResponse, $Out>
      get $asAuthenticatedResponse =>
          $base.as((v, t, t2) => _AuthenticatedResponseCopyWithImpl(v, t, t2));
}

abstract class AuthenticatedResponseCopyWith<
    $R,
    $In extends AuthenticatedResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? refreshToken});
  AuthenticatedResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthenticatedResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthenticatedResponse, $Out>
    implements AuthenticatedResponseCopyWith<$R, AuthenticatedResponse, $Out> {
  _AuthenticatedResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthenticatedResponse> $mapper =
      AuthenticatedResponseMapper.ensureInitialized();
  @override
  $R call({Object? accessToken = $none, Object? refreshToken = $none}) =>
      $apply(FieldCopyWithData({
        if (accessToken != $none) #accessToken: accessToken,
        if (refreshToken != $none) #refreshToken: refreshToken
      }));
  @override
  AuthenticatedResponse $make(CopyWithData data) => AuthenticatedResponse(
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  AuthenticatedResponseCopyWith<$R2, AuthenticatedResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AuthenticatedResponseCopyWithImpl($value, $cast, t);
}
