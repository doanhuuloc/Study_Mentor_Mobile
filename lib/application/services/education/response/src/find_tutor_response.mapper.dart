// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'find_tutor_response.dart';

class FindTutorResponseMapper extends ClassMapperBase<FindTutorResponse> {
  FindTutorResponseMapper._();

  static FindTutorResponseMapper? _instance;
  static FindTutorResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FindTutorResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FindTutorResponse';

  static String? _$message(FindTutorResponse v) => v.message;
  static const Field<FindTutorResponse, String> _f$message =
      Field('message', _$message, opt: true);

  @override
  final MappableFields<FindTutorResponse> fields = const {
    #message: _f$message,
  };

  static FindTutorResponse _instantiate(DecodingData data) {
    return FindTutorResponse(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static FindTutorResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FindTutorResponse>(map);
  }

  static FindTutorResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<FindTutorResponse>(json);
  }
}

mixin FindTutorResponseMappable {
  String toJsonString() {
    return FindTutorResponseMapper.ensureInitialized()
        .encodeJson<FindTutorResponse>(this as FindTutorResponse);
  }

  Map<String, dynamic> toJson() {
    return FindTutorResponseMapper.ensureInitialized()
        .encodeMap<FindTutorResponse>(this as FindTutorResponse);
  }

  FindTutorResponseCopyWith<FindTutorResponse, FindTutorResponse,
          FindTutorResponse>
      get copyWith => _FindTutorResponseCopyWithImpl(
          this as FindTutorResponse, $identity, $identity);
  @override
  String toString() {
    return FindTutorResponseMapper.ensureInitialized()
        .stringifyValue(this as FindTutorResponse);
  }

  @override
  bool operator ==(Object other) {
    return FindTutorResponseMapper.ensureInitialized()
        .equalsValue(this as FindTutorResponse, other);
  }

  @override
  int get hashCode {
    return FindTutorResponseMapper.ensureInitialized()
        .hashValue(this as FindTutorResponse);
  }
}

extension FindTutorResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FindTutorResponse, $Out> {
  FindTutorResponseCopyWith<$R, FindTutorResponse, $Out>
      get $asFindTutorResponse =>
          $base.as((v, t, t2) => _FindTutorResponseCopyWithImpl(v, t, t2));
}

abstract class FindTutorResponseCopyWith<$R, $In extends FindTutorResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message});
  FindTutorResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _FindTutorResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FindTutorResponse, $Out>
    implements FindTutorResponseCopyWith<$R, FindTutorResponse, $Out> {
  _FindTutorResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FindTutorResponse> $mapper =
      FindTutorResponseMapper.ensureInitialized();
  @override
  $R call({Object? message = $none}) =>
      $apply(FieldCopyWithData({if (message != $none) #message: message}));
  @override
  FindTutorResponse $make(CopyWithData data) =>
      FindTutorResponse(message: data.get(#message, or: $value.message));

  @override
  FindTutorResponseCopyWith<$R2, FindTutorResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FindTutorResponseCopyWithImpl($value, $cast, t);
}
