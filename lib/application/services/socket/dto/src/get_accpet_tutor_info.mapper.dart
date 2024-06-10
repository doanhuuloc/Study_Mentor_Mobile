// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_accpet_tutor_info.dart';

class GetAcceptTutorInfoMapper extends ClassMapperBase<GetAcceptTutorInfo> {
  GetAcceptTutorInfoMapper._();

  static GetAcceptTutorInfoMapper? _instance;
  static GetAcceptTutorInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetAcceptTutorInfoMapper._());
      UserInfoResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetAcceptTutorInfo';

  static UserInfoResponse? _$data(GetAcceptTutorInfo v) => v.data;
  static const Field<GetAcceptTutorInfo, UserInfoResponse> _f$data =
      Field('data', _$data, opt: true);

  @override
  final MappableFields<GetAcceptTutorInfo> fields = const {
    #data: _f$data,
  };

  static GetAcceptTutorInfo _instantiate(DecodingData data) {
    return GetAcceptTutorInfo(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static GetAcceptTutorInfo fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetAcceptTutorInfo>(map);
  }

  static GetAcceptTutorInfo fromJsonString(String json) {
    return ensureInitialized().decodeJson<GetAcceptTutorInfo>(json);
  }
}

mixin GetAcceptTutorInfoMappable {
  String toJsonString() {
    return GetAcceptTutorInfoMapper.ensureInitialized()
        .encodeJson<GetAcceptTutorInfo>(this as GetAcceptTutorInfo);
  }

  Map<String, dynamic> toJson() {
    return GetAcceptTutorInfoMapper.ensureInitialized()
        .encodeMap<GetAcceptTutorInfo>(this as GetAcceptTutorInfo);
  }

  GetAcceptTutorInfoCopyWith<GetAcceptTutorInfo, GetAcceptTutorInfo,
          GetAcceptTutorInfo>
      get copyWith => _GetAcceptTutorInfoCopyWithImpl(
          this as GetAcceptTutorInfo, $identity, $identity);
  @override
  String toString() {
    return GetAcceptTutorInfoMapper.ensureInitialized()
        .stringifyValue(this as GetAcceptTutorInfo);
  }

  @override
  bool operator ==(Object other) {
    return GetAcceptTutorInfoMapper.ensureInitialized()
        .equalsValue(this as GetAcceptTutorInfo, other);
  }

  @override
  int get hashCode {
    return GetAcceptTutorInfoMapper.ensureInitialized()
        .hashValue(this as GetAcceptTutorInfo);
  }
}

extension GetAcceptTutorInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetAcceptTutorInfo, $Out> {
  GetAcceptTutorInfoCopyWith<$R, GetAcceptTutorInfo, $Out>
      get $asGetAcceptTutorInfo =>
          $base.as((v, t, t2) => _GetAcceptTutorInfoCopyWithImpl(v, t, t2));
}

abstract class GetAcceptTutorInfoCopyWith<$R, $In extends GetAcceptTutorInfo,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  UserInfoResponseCopyWith<$R, UserInfoResponse, UserInfoResponse>? get data;
  $R call({UserInfoResponse? data});
  GetAcceptTutorInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetAcceptTutorInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetAcceptTutorInfo, $Out>
    implements GetAcceptTutorInfoCopyWith<$R, GetAcceptTutorInfo, $Out> {
  _GetAcceptTutorInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetAcceptTutorInfo> $mapper =
      GetAcceptTutorInfoMapper.ensureInitialized();
  @override
  UserInfoResponseCopyWith<$R, UserInfoResponse, UserInfoResponse>? get data =>
      $value.data?.copyWith.$chain((v) => call(data: v));
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  GetAcceptTutorInfo $make(CopyWithData data) =>
      GetAcceptTutorInfo(data: data.get(#data, or: $value.data));

  @override
  GetAcceptTutorInfoCopyWith<$R2, GetAcceptTutorInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetAcceptTutorInfoCopyWithImpl($value, $cast, t);
}
