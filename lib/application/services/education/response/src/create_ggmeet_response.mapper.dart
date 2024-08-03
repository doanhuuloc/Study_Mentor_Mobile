// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_ggmeet_response.dart';

class CreateGGMeetResponseMapper extends ClassMapperBase<CreateGGMeetResponse> {
  CreateGGMeetResponseMapper._();

  static CreateGGMeetResponseMapper? _instance;
  static CreateGGMeetResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateGGMeetResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateGGMeetResponse';

  static String? _$meetingURL(CreateGGMeetResponse v) => v.meetingURL;
  static const Field<CreateGGMeetResponse, String> _f$meetingURL =
      Field('meetingURL', _$meetingURL, opt: true);

  @override
  final MappableFields<CreateGGMeetResponse> fields = const {
    #meetingURL: _f$meetingURL,
  };

  static CreateGGMeetResponse _instantiate(DecodingData data) {
    return CreateGGMeetResponse(meetingURL: data.dec(_f$meetingURL));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateGGMeetResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateGGMeetResponse>(map);
  }

  static CreateGGMeetResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateGGMeetResponse>(json);
  }
}

mixin CreateGGMeetResponseMappable {
  String toJsonString() {
    return CreateGGMeetResponseMapper.ensureInitialized()
        .encodeJson<CreateGGMeetResponse>(this as CreateGGMeetResponse);
  }

  Map<String, dynamic> toJson() {
    return CreateGGMeetResponseMapper.ensureInitialized()
        .encodeMap<CreateGGMeetResponse>(this as CreateGGMeetResponse);
  }

  CreateGGMeetResponseCopyWith<CreateGGMeetResponse, CreateGGMeetResponse,
          CreateGGMeetResponse>
      get copyWith => _CreateGGMeetResponseCopyWithImpl(
          this as CreateGGMeetResponse, $identity, $identity);
  @override
  String toString() {
    return CreateGGMeetResponseMapper.ensureInitialized()
        .stringifyValue(this as CreateGGMeetResponse);
  }

  @override
  bool operator ==(Object other) {
    return CreateGGMeetResponseMapper.ensureInitialized()
        .equalsValue(this as CreateGGMeetResponse, other);
  }

  @override
  int get hashCode {
    return CreateGGMeetResponseMapper.ensureInitialized()
        .hashValue(this as CreateGGMeetResponse);
  }
}

extension CreateGGMeetResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateGGMeetResponse, $Out> {
  CreateGGMeetResponseCopyWith<$R, CreateGGMeetResponse, $Out>
      get $asCreateGGMeetResponse =>
          $base.as((v, t, t2) => _CreateGGMeetResponseCopyWithImpl(v, t, t2));
}

abstract class CreateGGMeetResponseCopyWith<
    $R,
    $In extends CreateGGMeetResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? meetingURL});
  CreateGGMeetResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateGGMeetResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateGGMeetResponse, $Out>
    implements CreateGGMeetResponseCopyWith<$R, CreateGGMeetResponse, $Out> {
  _CreateGGMeetResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateGGMeetResponse> $mapper =
      CreateGGMeetResponseMapper.ensureInitialized();
  @override
  $R call({Object? meetingURL = $none}) => $apply(
      FieldCopyWithData({if (meetingURL != $none) #meetingURL: meetingURL}));
  @override
  CreateGGMeetResponse $make(CopyWithData data) => CreateGGMeetResponse(
      meetingURL: data.get(#meetingURL, or: $value.meetingURL));

  @override
  CreateGGMeetResponseCopyWith<$R2, CreateGGMeetResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateGGMeetResponseCopyWithImpl($value, $cast, t);
}
