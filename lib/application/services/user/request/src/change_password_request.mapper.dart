// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'change_password_request.dart';

class ChangePasswordRequestMapper
    extends ClassMapperBase<ChangePasswordRequest> {
  ChangePasswordRequestMapper._();

  static ChangePasswordRequestMapper? _instance;
  static ChangePasswordRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChangePasswordRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ChangePasswordRequest';

  static String _$passwordOld(ChangePasswordRequest v) => v.passwordOld;
  static const Field<ChangePasswordRequest, String> _f$passwordOld =
      Field('passwordOld', _$passwordOld);
  static String _$passwordNew(ChangePasswordRequest v) => v.passwordNew;
  static const Field<ChangePasswordRequest, String> _f$passwordNew =
      Field('passwordNew', _$passwordNew);

  @override
  final MappableFields<ChangePasswordRequest> fields = const {
    #passwordOld: _f$passwordOld,
    #passwordNew: _f$passwordNew,
  };

  static ChangePasswordRequest _instantiate(DecodingData data) {
    return ChangePasswordRequest(
        passwordOld: data.dec(_f$passwordOld),
        passwordNew: data.dec(_f$passwordNew));
  }

  @override
  final Function instantiate = _instantiate;

  static ChangePasswordRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChangePasswordRequest>(map);
  }

  static ChangePasswordRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<ChangePasswordRequest>(json);
  }
}

mixin ChangePasswordRequestMappable {
  String toJsonString() {
    return ChangePasswordRequestMapper.ensureInitialized()
        .encodeJson<ChangePasswordRequest>(this as ChangePasswordRequest);
  }

  Map<String, dynamic> toJson() {
    return ChangePasswordRequestMapper.ensureInitialized()
        .encodeMap<ChangePasswordRequest>(this as ChangePasswordRequest);
  }

  ChangePasswordRequestCopyWith<ChangePasswordRequest, ChangePasswordRequest,
          ChangePasswordRequest>
      get copyWith => _ChangePasswordRequestCopyWithImpl(
          this as ChangePasswordRequest, $identity, $identity);
  @override
  String toString() {
    return ChangePasswordRequestMapper.ensureInitialized()
        .stringifyValue(this as ChangePasswordRequest);
  }

  @override
  bool operator ==(Object other) {
    return ChangePasswordRequestMapper.ensureInitialized()
        .equalsValue(this as ChangePasswordRequest, other);
  }

  @override
  int get hashCode {
    return ChangePasswordRequestMapper.ensureInitialized()
        .hashValue(this as ChangePasswordRequest);
  }
}

extension ChangePasswordRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChangePasswordRequest, $Out> {
  ChangePasswordRequestCopyWith<$R, ChangePasswordRequest, $Out>
      get $asChangePasswordRequest =>
          $base.as((v, t, t2) => _ChangePasswordRequestCopyWithImpl(v, t, t2));
}

abstract class ChangePasswordRequestCopyWith<
    $R,
    $In extends ChangePasswordRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? passwordOld, String? passwordNew});
  ChangePasswordRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChangePasswordRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChangePasswordRequest, $Out>
    implements ChangePasswordRequestCopyWith<$R, ChangePasswordRequest, $Out> {
  _ChangePasswordRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChangePasswordRequest> $mapper =
      ChangePasswordRequestMapper.ensureInitialized();
  @override
  $R call({String? passwordOld, String? passwordNew}) =>
      $apply(FieldCopyWithData({
        if (passwordOld != null) #passwordOld: passwordOld,
        if (passwordNew != null) #passwordNew: passwordNew
      }));
  @override
  ChangePasswordRequest $make(CopyWithData data) => ChangePasswordRequest(
      passwordOld: data.get(#passwordOld, or: $value.passwordOld),
      passwordNew: data.get(#passwordNew, or: $value.passwordNew));

  @override
  ChangePasswordRequestCopyWith<$R2, ChangePasswordRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ChangePasswordRequestCopyWithImpl($value, $cast, t);
}
