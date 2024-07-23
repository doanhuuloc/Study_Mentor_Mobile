// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'update_profile_request.dart';

class GenderMapper extends EnumMapper<Gender> {
  GenderMapper._();

  static GenderMapper? _instance;
  static GenderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenderMapper._());
    }
    return _instance!;
  }

  static Gender fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Gender decode(dynamic value) {
    switch (value) {
      case 'MALE':
        return Gender.male;
      case 'FEMALE':
        return Gender.female;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Gender self) {
    switch (self) {
      case Gender.male:
        return 'MALE';
      case Gender.female:
        return 'FEMALE';
    }
  }
}

extension GenderMapperExtension on Gender {
  String toValue() {
    GenderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Gender>(this) as String;
  }
}

class UpdateProfileRequestMapper extends ClassMapperBase<UpdateProfileRequest> {
  UpdateProfileRequestMapper._();

  static UpdateProfileRequestMapper? _instance;
  static UpdateProfileRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdateProfileRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateProfileRequest';

  static String? _$fullName(UpdateProfileRequest v) => v.fullName;
  static const Field<UpdateProfileRequest, String> _f$fullName =
      Field('fullName', _$fullName, opt: true);
  static String? _$email(UpdateProfileRequest v) => v.email;
  static const Field<UpdateProfileRequest, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$phone(UpdateProfileRequest v) => v.phone;
  static const Field<UpdateProfileRequest, String> _f$phone =
      Field('phone', _$phone, opt: true);
  static String? _$dateOfBirth(UpdateProfileRequest v) => v.dateOfBirth;
  static const Field<UpdateProfileRequest, String> _f$dateOfBirth =
      Field('dateOfBirth', _$dateOfBirth, opt: true);
  static int? _$gender(UpdateProfileRequest v) => v.gender;
  static const Field<UpdateProfileRequest, int> _f$gender =
      Field('gender', _$gender, opt: true);

  @override
  final MappableFields<UpdateProfileRequest> fields = const {
    #fullName: _f$fullName,
    #email: _f$email,
    #phone: _f$phone,
    #dateOfBirth: _f$dateOfBirth,
    #gender: _f$gender,
  };

  static UpdateProfileRequest _instantiate(DecodingData data) {
    return UpdateProfileRequest(
        fullName: data.dec(_f$fullName),
        email: data.dec(_f$email),
        phone: data.dec(_f$phone),
        dateOfBirth: data.dec(_f$dateOfBirth),
        gender: data.dec(_f$gender));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateProfileRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateProfileRequest>(map);
  }

  static UpdateProfileRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<UpdateProfileRequest>(json);
  }
}

mixin UpdateProfileRequestMappable {
  String toJsonString() {
    return UpdateProfileRequestMapper.ensureInitialized()
        .encodeJson<UpdateProfileRequest>(this as UpdateProfileRequest);
  }

  Map<String, dynamic> toJson() {
    return UpdateProfileRequestMapper.ensureInitialized()
        .encodeMap<UpdateProfileRequest>(this as UpdateProfileRequest);
  }

  UpdateProfileRequestCopyWith<UpdateProfileRequest, UpdateProfileRequest,
          UpdateProfileRequest>
      get copyWith => _UpdateProfileRequestCopyWithImpl(
          this as UpdateProfileRequest, $identity, $identity);
  @override
  String toString() {
    return UpdateProfileRequestMapper.ensureInitialized()
        .stringifyValue(this as UpdateProfileRequest);
  }

  @override
  bool operator ==(Object other) {
    return UpdateProfileRequestMapper.ensureInitialized()
        .equalsValue(this as UpdateProfileRequest, other);
  }

  @override
  int get hashCode {
    return UpdateProfileRequestMapper.ensureInitialized()
        .hashValue(this as UpdateProfileRequest);
  }
}

extension UpdateProfileRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateProfileRequest, $Out> {
  UpdateProfileRequestCopyWith<$R, UpdateProfileRequest, $Out>
      get $asUpdateProfileRequest =>
          $base.as((v, t, t2) => _UpdateProfileRequestCopyWithImpl(v, t, t2));
}

abstract class UpdateProfileRequestCopyWith<
    $R,
    $In extends UpdateProfileRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? fullName,
      String? email,
      String? phone,
      String? dateOfBirth,
      int? gender});
  UpdateProfileRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdateProfileRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateProfileRequest, $Out>
    implements UpdateProfileRequestCopyWith<$R, UpdateProfileRequest, $Out> {
  _UpdateProfileRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateProfileRequest> $mapper =
      UpdateProfileRequestMapper.ensureInitialized();
  @override
  $R call(
          {Object? fullName = $none,
          Object? email = $none,
          Object? phone = $none,
          Object? dateOfBirth = $none,
          Object? gender = $none}) =>
      $apply(FieldCopyWithData({
        if (fullName != $none) #fullName: fullName,
        if (email != $none) #email: email,
        if (phone != $none) #phone: phone,
        if (dateOfBirth != $none) #dateOfBirth: dateOfBirth,
        if (gender != $none) #gender: gender
      }));
  @override
  UpdateProfileRequest $make(CopyWithData data) => UpdateProfileRequest(
      fullName: data.get(#fullName, or: $value.fullName),
      email: data.get(#email, or: $value.email),
      phone: data.get(#phone, or: $value.phone),
      dateOfBirth: data.get(#dateOfBirth, or: $value.dateOfBirth),
      gender: data.get(#gender, or: $value.gender));

  @override
  UpdateProfileRequestCopyWith<$R2, UpdateProfileRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdateProfileRequestCopyWithImpl($value, $cast, t);
}
