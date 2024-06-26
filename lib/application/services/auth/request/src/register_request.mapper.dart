// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'register_request.dart';

class RegisterRequestMapper extends ClassMapperBase<RegisterRequest> {
  RegisterRequestMapper._();

  static RegisterRequestMapper? _instance;
  static RegisterRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterRequest';

  static String _$email(RegisterRequest v) => v.email;
  static const Field<RegisterRequest, String> _f$email =
      Field('email', _$email);
  static String _$password(RegisterRequest v) => v.password;
  static const Field<RegisterRequest, String> _f$password =
      Field('password', _$password);
  static String _$fullName(RegisterRequest v) => v.fullName;
  static const Field<RegisterRequest, String> _f$fullName =
      Field('fullName', _$fullName);
  static int _$gender(RegisterRequest v) => v.gender;
  static const Field<RegisterRequest, int> _f$gender =
      Field('gender', _$gender);
  static int _$type(RegisterRequest v) => v.type;
  static const Field<RegisterRequest, int> _f$type = Field('type', _$type);

  @override
  final MappableFields<RegisterRequest> fields = const {
    #email: _f$email,
    #password: _f$password,
    #fullName: _f$fullName,
    #gender: _f$gender,
    #type: _f$type,
  };

  static RegisterRequest _instantiate(DecodingData data) {
    return RegisterRequest(
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        fullName: data.dec(_f$fullName),
        gender: data.dec(_f$gender),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterRequest>(map);
  }

  static RegisterRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<RegisterRequest>(json);
  }
}

mixin RegisterRequestMappable {
  String toJsonString() {
    return RegisterRequestMapper.ensureInitialized()
        .encodeJson<RegisterRequest>(this as RegisterRequest);
  }

  Map<String, dynamic> toJson() {
    return RegisterRequestMapper.ensureInitialized()
        .encodeMap<RegisterRequest>(this as RegisterRequest);
  }

  RegisterRequestCopyWith<RegisterRequest, RegisterRequest, RegisterRequest>
      get copyWith => _RegisterRequestCopyWithImpl(
          this as RegisterRequest, $identity, $identity);
  @override
  String toString() {
    return RegisterRequestMapper.ensureInitialized()
        .stringifyValue(this as RegisterRequest);
  }

  @override
  bool operator ==(Object other) {
    return RegisterRequestMapper.ensureInitialized()
        .equalsValue(this as RegisterRequest, other);
  }

  @override
  int get hashCode {
    return RegisterRequestMapper.ensureInitialized()
        .hashValue(this as RegisterRequest);
  }
}

extension RegisterRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegisterRequest, $Out> {
  RegisterRequestCopyWith<$R, RegisterRequest, $Out> get $asRegisterRequest =>
      $base.as((v, t, t2) => _RegisterRequestCopyWithImpl(v, t, t2));
}

abstract class RegisterRequestCopyWith<$R, $In extends RegisterRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? email,
      String? password,
      String? fullName,
      int? gender,
      int? type});
  RegisterRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RegisterRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegisterRequest, $Out>
    implements RegisterRequestCopyWith<$R, RegisterRequest, $Out> {
  _RegisterRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegisterRequest> $mapper =
      RegisterRequestMapper.ensureInitialized();
  @override
  $R call(
          {String? email,
          String? password,
          String? fullName,
          int? gender,
          int? type}) =>
      $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (password != null) #password: password,
        if (fullName != null) #fullName: fullName,
        if (gender != null) #gender: gender,
        if (type != null) #type: type
      }));
  @override
  RegisterRequest $make(CopyWithData data) => RegisterRequest(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      fullName: data.get(#fullName, or: $value.fullName),
      gender: data.get(#gender, or: $value.gender),
      type: data.get(#type, or: $value.type));

  @override
  RegisterRequestCopyWith<$R2, RegisterRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RegisterRequestCopyWithImpl($value, $cast, t);
}
