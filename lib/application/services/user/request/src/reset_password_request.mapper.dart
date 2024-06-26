// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reset_password_request.dart';

class ResetPasswordRequestMapper extends ClassMapperBase<ResetPasswordRequest> {
  ResetPasswordRequestMapper._();

  static ResetPasswordRequestMapper? _instance;
  static ResetPasswordRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResetPasswordRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResetPasswordRequest';

  static String _$email(ResetPasswordRequest v) => v.email;
  static const Field<ResetPasswordRequest, String> _f$email =
      Field('email', _$email);

  @override
  final MappableFields<ResetPasswordRequest> fields = const {
    #email: _f$email,
  };

  static ResetPasswordRequest _instantiate(DecodingData data) {
    return ResetPasswordRequest(email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static ResetPasswordRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResetPasswordRequest>(map);
  }

  static ResetPasswordRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<ResetPasswordRequest>(json);
  }
}

mixin ResetPasswordRequestMappable {
  String toJsonString() {
    return ResetPasswordRequestMapper.ensureInitialized()
        .encodeJson<ResetPasswordRequest>(this as ResetPasswordRequest);
  }

  Map<String, dynamic> toJson() {
    return ResetPasswordRequestMapper.ensureInitialized()
        .encodeMap<ResetPasswordRequest>(this as ResetPasswordRequest);
  }

  ResetPasswordRequestCopyWith<ResetPasswordRequest, ResetPasswordRequest,
          ResetPasswordRequest>
      get copyWith => _ResetPasswordRequestCopyWithImpl(
          this as ResetPasswordRequest, $identity, $identity);
  @override
  String toString() {
    return ResetPasswordRequestMapper.ensureInitialized()
        .stringifyValue(this as ResetPasswordRequest);
  }

  @override
  bool operator ==(Object other) {
    return ResetPasswordRequestMapper.ensureInitialized()
        .equalsValue(this as ResetPasswordRequest, other);
  }

  @override
  int get hashCode {
    return ResetPasswordRequestMapper.ensureInitialized()
        .hashValue(this as ResetPasswordRequest);
  }
}

extension ResetPasswordRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResetPasswordRequest, $Out> {
  ResetPasswordRequestCopyWith<$R, ResetPasswordRequest, $Out>
      get $asResetPasswordRequest =>
          $base.as((v, t, t2) => _ResetPasswordRequestCopyWithImpl(v, t, t2));
}

abstract class ResetPasswordRequestCopyWith<
    $R,
    $In extends ResetPasswordRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email});
  ResetPasswordRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ResetPasswordRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResetPasswordRequest, $Out>
    implements ResetPasswordRequestCopyWith<$R, ResetPasswordRequest, $Out> {
  _ResetPasswordRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResetPasswordRequest> $mapper =
      ResetPasswordRequestMapper.ensureInitialized();
  @override
  $R call({String? email}) =>
      $apply(FieldCopyWithData({if (email != null) #email: email}));
  @override
  ResetPasswordRequest $make(CopyWithData data) =>
      ResetPasswordRequest(email: data.get(#email, or: $value.email));

  @override
  ResetPasswordRequestCopyWith<$R2, ResetPasswordRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ResetPasswordRequestCopyWithImpl($value, $cast, t);
}
