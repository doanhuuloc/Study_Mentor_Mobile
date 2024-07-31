// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_bank_info_response.dart';

class GetBankInfoResponseMapper extends ClassMapperBase<GetBankInfoResponse> {
  GetBankInfoResponseMapper._();

  static GetBankInfoResponseMapper? _instance;
  static GetBankInfoResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetBankInfoResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetBankInfoResponse';

  static String? _$idOfBanking(GetBankInfoResponse v) => v.idOfBanking;
  static const Field<GetBankInfoResponse, String> _f$idOfBanking =
      Field('idOfBanking', _$idOfBanking);
  static String? _$nameOfBanking(GetBankInfoResponse v) => v.nameOfBanking;
  static const Field<GetBankInfoResponse, String> _f$nameOfBanking =
      Field('nameOfBanking', _$nameOfBanking);
  static String? _$numberOfBanking(GetBankInfoResponse v) => v.numberOfBanking;
  static const Field<GetBankInfoResponse, String> _f$numberOfBanking =
      Field('numberOfBanking', _$numberOfBanking);
  static String? _$nameUserOfBanking(GetBankInfoResponse v) =>
      v.nameUserOfBanking;
  static const Field<GetBankInfoResponse, String> _f$nameUserOfBanking =
      Field('nameUserOfBanking', _$nameUserOfBanking);

  @override
  final MappableFields<GetBankInfoResponse> fields = const {
    #idOfBanking: _f$idOfBanking,
    #nameOfBanking: _f$nameOfBanking,
    #numberOfBanking: _f$numberOfBanking,
    #nameUserOfBanking: _f$nameUserOfBanking,
  };

  static GetBankInfoResponse _instantiate(DecodingData data) {
    return GetBankInfoResponse(
        idOfBanking: data.dec(_f$idOfBanking),
        nameOfBanking: data.dec(_f$nameOfBanking),
        numberOfBanking: data.dec(_f$numberOfBanking),
        nameUserOfBanking: data.dec(_f$nameUserOfBanking));
  }

  @override
  final Function instantiate = _instantiate;

  static GetBankInfoResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetBankInfoResponse>(map);
  }

  static GetBankInfoResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<GetBankInfoResponse>(json);
  }
}

mixin GetBankInfoResponseMappable {
  String toJsonString() {
    return GetBankInfoResponseMapper.ensureInitialized()
        .encodeJson<GetBankInfoResponse>(this as GetBankInfoResponse);
  }

  Map<String, dynamic> toJson() {
    return GetBankInfoResponseMapper.ensureInitialized()
        .encodeMap<GetBankInfoResponse>(this as GetBankInfoResponse);
  }

  GetBankInfoResponseCopyWith<GetBankInfoResponse, GetBankInfoResponse,
          GetBankInfoResponse>
      get copyWith => _GetBankInfoResponseCopyWithImpl(
          this as GetBankInfoResponse, $identity, $identity);
  @override
  String toString() {
    return GetBankInfoResponseMapper.ensureInitialized()
        .stringifyValue(this as GetBankInfoResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetBankInfoResponseMapper.ensureInitialized()
        .equalsValue(this as GetBankInfoResponse, other);
  }

  @override
  int get hashCode {
    return GetBankInfoResponseMapper.ensureInitialized()
        .hashValue(this as GetBankInfoResponse);
  }
}

extension GetBankInfoResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetBankInfoResponse, $Out> {
  GetBankInfoResponseCopyWith<$R, GetBankInfoResponse, $Out>
      get $asGetBankInfoResponse =>
          $base.as((v, t, t2) => _GetBankInfoResponseCopyWithImpl(v, t, t2));
}

abstract class GetBankInfoResponseCopyWith<$R, $In extends GetBankInfoResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? idOfBanking,
      String? nameOfBanking,
      String? numberOfBanking,
      String? nameUserOfBanking});
  GetBankInfoResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetBankInfoResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetBankInfoResponse, $Out>
    implements GetBankInfoResponseCopyWith<$R, GetBankInfoResponse, $Out> {
  _GetBankInfoResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetBankInfoResponse> $mapper =
      GetBankInfoResponseMapper.ensureInitialized();
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
  GetBankInfoResponse $make(CopyWithData data) => GetBankInfoResponse(
      idOfBanking: data.get(#idOfBanking, or: $value.idOfBanking),
      nameOfBanking: data.get(#nameOfBanking, or: $value.nameOfBanking),
      numberOfBanking: data.get(#numberOfBanking, or: $value.numberOfBanking),
      nameUserOfBanking:
          data.get(#nameUserOfBanking, or: $value.nameUserOfBanking));

  @override
  GetBankInfoResponseCopyWith<$R2, GetBankInfoResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetBankInfoResponseCopyWithImpl($value, $cast, t);
}
