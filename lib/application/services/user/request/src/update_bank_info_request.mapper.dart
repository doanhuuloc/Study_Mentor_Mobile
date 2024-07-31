// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'update_bank_info_request.dart';

class UpdateBankInfoRequestMapper
    extends ClassMapperBase<UpdateBankInfoRequest> {
  UpdateBankInfoRequestMapper._();

  static UpdateBankInfoRequestMapper? _instance;
  static UpdateBankInfoRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdateBankInfoRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateBankInfoRequest';

  static String? _$idOfBanking(UpdateBankInfoRequest v) => v.idOfBanking;
  static const Field<UpdateBankInfoRequest, String> _f$idOfBanking =
      Field('idOfBanking', _$idOfBanking);
  static String? _$nameOfBanking(UpdateBankInfoRequest v) => v.nameOfBanking;
  static const Field<UpdateBankInfoRequest, String> _f$nameOfBanking =
      Field('nameOfBanking', _$nameOfBanking);
  static String? _$numberOfBanking(UpdateBankInfoRequest v) =>
      v.numberOfBanking;
  static const Field<UpdateBankInfoRequest, String> _f$numberOfBanking =
      Field('numberOfBanking', _$numberOfBanking);
  static String? _$nameUserOfBanking(UpdateBankInfoRequest v) =>
      v.nameUserOfBanking;
  static const Field<UpdateBankInfoRequest, String> _f$nameUserOfBanking =
      Field('nameUserOfBanking', _$nameUserOfBanking);

  @override
  final MappableFields<UpdateBankInfoRequest> fields = const {
    #idOfBanking: _f$idOfBanking,
    #nameOfBanking: _f$nameOfBanking,
    #numberOfBanking: _f$numberOfBanking,
    #nameUserOfBanking: _f$nameUserOfBanking,
  };

  static UpdateBankInfoRequest _instantiate(DecodingData data) {
    return UpdateBankInfoRequest(
        idOfBanking: data.dec(_f$idOfBanking),
        nameOfBanking: data.dec(_f$nameOfBanking),
        numberOfBanking: data.dec(_f$numberOfBanking),
        nameUserOfBanking: data.dec(_f$nameUserOfBanking));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateBankInfoRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateBankInfoRequest>(map);
  }

  static UpdateBankInfoRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<UpdateBankInfoRequest>(json);
  }
}

mixin UpdateBankInfoRequestMappable {
  String toJsonString() {
    return UpdateBankInfoRequestMapper.ensureInitialized()
        .encodeJson<UpdateBankInfoRequest>(this as UpdateBankInfoRequest);
  }

  Map<String, dynamic> toJson() {
    return UpdateBankInfoRequestMapper.ensureInitialized()
        .encodeMap<UpdateBankInfoRequest>(this as UpdateBankInfoRequest);
  }

  UpdateBankInfoRequestCopyWith<UpdateBankInfoRequest, UpdateBankInfoRequest,
          UpdateBankInfoRequest>
      get copyWith => _UpdateBankInfoRequestCopyWithImpl(
          this as UpdateBankInfoRequest, $identity, $identity);
  @override
  String toString() {
    return UpdateBankInfoRequestMapper.ensureInitialized()
        .stringifyValue(this as UpdateBankInfoRequest);
  }

  @override
  bool operator ==(Object other) {
    return UpdateBankInfoRequestMapper.ensureInitialized()
        .equalsValue(this as UpdateBankInfoRequest, other);
  }

  @override
  int get hashCode {
    return UpdateBankInfoRequestMapper.ensureInitialized()
        .hashValue(this as UpdateBankInfoRequest);
  }
}

extension UpdateBankInfoRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateBankInfoRequest, $Out> {
  UpdateBankInfoRequestCopyWith<$R, UpdateBankInfoRequest, $Out>
      get $asUpdateBankInfoRequest =>
          $base.as((v, t, t2) => _UpdateBankInfoRequestCopyWithImpl(v, t, t2));
}

abstract class UpdateBankInfoRequestCopyWith<
    $R,
    $In extends UpdateBankInfoRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? idOfBanking,
      String? nameOfBanking,
      String? numberOfBanking,
      String? nameUserOfBanking});
  UpdateBankInfoRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdateBankInfoRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateBankInfoRequest, $Out>
    implements UpdateBankInfoRequestCopyWith<$R, UpdateBankInfoRequest, $Out> {
  _UpdateBankInfoRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateBankInfoRequest> $mapper =
      UpdateBankInfoRequestMapper.ensureInitialized();
  @override
  $R call(
          {Object? idOfBanking = $none,
          Object? nameOfBanking = $none,
          Object? numberOfBanking = $none,
          Object? nameUserOfBanking = $none}) =>
      $apply(FieldCopyWithData({
        if (idOfBanking != $none) #idOfBanking: idOfBanking,
        if (nameOfBanking != $none) #nameOfBanking: nameOfBanking,
        if (numberOfBanking != $none) #numberOfBanking: numberOfBanking,
        if (nameUserOfBanking != $none) #nameUserOfBanking: nameUserOfBanking
      }));
  @override
  UpdateBankInfoRequest $make(CopyWithData data) => UpdateBankInfoRequest(
      idOfBanking: data.get(#idOfBanking, or: $value.idOfBanking),
      nameOfBanking: data.get(#nameOfBanking, or: $value.nameOfBanking),
      numberOfBanking: data.get(#numberOfBanking, or: $value.numberOfBanking),
      nameUserOfBanking:
          data.get(#nameUserOfBanking, or: $value.nameUserOfBanking));

  @override
  UpdateBankInfoRequestCopyWith<$R2, UpdateBankInfoRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdateBankInfoRequestCopyWithImpl($value, $cast, t);
}
