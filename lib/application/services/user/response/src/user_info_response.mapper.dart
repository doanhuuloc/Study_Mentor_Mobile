// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_info_response.dart';

class UserInfoResponseMapper extends ClassMapperBase<UserInfoResponse> {
  UserInfoResponseMapper._();

  static UserInfoResponseMapper? _instance;
  static UserInfoResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserInfoResponseMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserInfoResponse';

  static String? _$id(UserInfoResponse v) => v.id;
  static const Field<UserInfoResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$fullName(UserInfoResponse v) => v.fullName;
  static const Field<UserInfoResponse, String> _f$fullName =
      Field('fullName', _$fullName, opt: true);
  static String? _$email(UserInfoResponse v) => v.email;
  static const Field<UserInfoResponse, String> _f$email =
      Field('email', _$email, opt: true);
  static int? _$role(UserInfoResponse v) => v.role;
  static const Field<UserInfoResponse, int> _f$role =
      Field('role', _$role, opt: true);
  static String? _$phone(UserInfoResponse v) => v.phone;
  static const Field<UserInfoResponse, String> _f$phone =
      Field('phone', _$phone, opt: true);
  static int? _$dateOfBirth(UserInfoResponse v) => v.dateOfBirth;
  static const Field<UserInfoResponse, int> _f$dateOfBirth =
      Field('dateOfBirth', _$dateOfBirth, opt: true);
  static double? _$averageRate(UserInfoResponse v) => v.averageRate;
  static const Field<UserInfoResponse, double> _f$averageRate =
      Field('averageRate', _$averageRate, opt: true);
  static FileRequest? _$avatar(UserInfoResponse v) => v.avatar;
  static const Field<UserInfoResponse, FileRequest> _f$avatar =
      Field('avatar', _$avatar, opt: true);
  static int? _$gender(UserInfoResponse v) => v.gender;
  static const Field<UserInfoResponse, int> _f$gender =
      Field('gender', _$gender, opt: true);
  static int? _$status(UserInfoResponse v) => v.status;
  static const Field<UserInfoResponse, int> _f$status =
      Field('status', _$status, opt: true);

  @override
  final MappableFields<UserInfoResponse> fields = const {
    #id: _f$id,
    #fullName: _f$fullName,
    #email: _f$email,
    #role: _f$role,
    #phone: _f$phone,
    #dateOfBirth: _f$dateOfBirth,
    #averageRate: _f$averageRate,
    #avatar: _f$avatar,
    #gender: _f$gender,
    #status: _f$status,
  };

  static UserInfoResponse _instantiate(DecodingData data) {
    return UserInfoResponse(
        id: data.dec(_f$id),
        fullName: data.dec(_f$fullName),
        email: data.dec(_f$email),
        role: data.dec(_f$role),
        phone: data.dec(_f$phone),
        dateOfBirth: data.dec(_f$dateOfBirth),
        averageRate: data.dec(_f$averageRate),
        avatar: data.dec(_f$avatar),
        gender: data.dec(_f$gender),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static UserInfoResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserInfoResponse>(map);
  }

  static UserInfoResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<UserInfoResponse>(json);
  }
}

mixin UserInfoResponseMappable {
  String toJsonString() {
    return UserInfoResponseMapper.ensureInitialized()
        .encodeJson<UserInfoResponse>(this as UserInfoResponse);
  }

  Map<String, dynamic> toJson() {
    return UserInfoResponseMapper.ensureInitialized()
        .encodeMap<UserInfoResponse>(this as UserInfoResponse);
  }

  UserInfoResponseCopyWith<UserInfoResponse, UserInfoResponse, UserInfoResponse>
      get copyWith => _UserInfoResponseCopyWithImpl(
          this as UserInfoResponse, $identity, $identity);
  @override
  String toString() {
    return UserInfoResponseMapper.ensureInitialized()
        .stringifyValue(this as UserInfoResponse);
  }

  @override
  bool operator ==(Object other) {
    return UserInfoResponseMapper.ensureInitialized()
        .equalsValue(this as UserInfoResponse, other);
  }

  @override
  int get hashCode {
    return UserInfoResponseMapper.ensureInitialized()
        .hashValue(this as UserInfoResponse);
  }
}

extension UserInfoResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserInfoResponse, $Out> {
  UserInfoResponseCopyWith<$R, UserInfoResponse, $Out>
      get $asUserInfoResponse =>
          $base.as((v, t, t2) => _UserInfoResponseCopyWithImpl(v, t, t2));
}

abstract class UserInfoResponseCopyWith<$R, $In extends UserInfoResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FileRequestCopyWith<$R, FileRequest, FileRequest>? get avatar;
  $R call(
      {String? id,
      String? fullName,
      String? email,
      int? role,
      String? phone,
      int? dateOfBirth,
      double? averageRate,
      FileRequest? avatar,
      int? gender,
      int? status});
  UserInfoResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserInfoResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserInfoResponse, $Out>
    implements UserInfoResponseCopyWith<$R, UserInfoResponse, $Out> {
  _UserInfoResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserInfoResponse> $mapper =
      UserInfoResponseMapper.ensureInitialized();
  @override
  FileRequestCopyWith<$R, FileRequest, FileRequest>? get avatar =>
      $value.avatar?.copyWith.$chain((v) => call(avatar: v));
  @override
  $R call(
          {Object? id = $none,
          Object? fullName = $none,
          Object? email = $none,
          Object? role = $none,
          Object? phone = $none,
          Object? dateOfBirth = $none,
          Object? averageRate = $none,
          Object? avatar = $none,
          Object? gender = $none,
          Object? status = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (fullName != $none) #fullName: fullName,
        if (email != $none) #email: email,
        if (role != $none) #role: role,
        if (phone != $none) #phone: phone,
        if (dateOfBirth != $none) #dateOfBirth: dateOfBirth,
        if (averageRate != $none) #averageRate: averageRate,
        if (avatar != $none) #avatar: avatar,
        if (gender != $none) #gender: gender,
        if (status != $none) #status: status
      }));
  @override
  UserInfoResponse $make(CopyWithData data) => UserInfoResponse(
      id: data.get(#id, or: $value.id),
      fullName: data.get(#fullName, or: $value.fullName),
      email: data.get(#email, or: $value.email),
      role: data.get(#role, or: $value.role),
      phone: data.get(#phone, or: $value.phone),
      dateOfBirth: data.get(#dateOfBirth, or: $value.dateOfBirth),
      averageRate: data.get(#averageRate, or: $value.averageRate),
      avatar: data.get(#avatar, or: $value.avatar),
      gender: data.get(#gender, or: $value.gender),
      status: data.get(#status, or: $value.status));

  @override
  UserInfoResponseCopyWith<$R2, UserInfoResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserInfoResponseCopyWithImpl($value, $cast, t);
}
