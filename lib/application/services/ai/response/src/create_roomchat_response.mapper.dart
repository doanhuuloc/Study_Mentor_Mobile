// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_roomchat_response.dart';

class CreateRoomChatResponseMapper
    extends ClassMapperBase<CreateRoomChatResponse> {
  CreateRoomChatResponseMapper._();

  static CreateRoomChatResponseMapper? _instance;
  static CreateRoomChatResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateRoomChatResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateRoomChatResponse';

  static String? _$RoomId(CreateRoomChatResponse v) => v.RoomId;
  static const Field<CreateRoomChatResponse, String> _f$RoomId =
      Field('RoomId', _$RoomId, opt: true);

  @override
  final MappableFields<CreateRoomChatResponse> fields = const {
    #RoomId: _f$RoomId,
  };

  static CreateRoomChatResponse _instantiate(DecodingData data) {
    return CreateRoomChatResponse(RoomId: data.dec(_f$RoomId));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateRoomChatResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateRoomChatResponse>(map);
  }

  static CreateRoomChatResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateRoomChatResponse>(json);
  }
}

mixin CreateRoomChatResponseMappable {
  String toJsonString() {
    return CreateRoomChatResponseMapper.ensureInitialized()
        .encodeJson<CreateRoomChatResponse>(this as CreateRoomChatResponse);
  }

  Map<String, dynamic> toJson() {
    return CreateRoomChatResponseMapper.ensureInitialized()
        .encodeMap<CreateRoomChatResponse>(this as CreateRoomChatResponse);
  }

  CreateRoomChatResponseCopyWith<CreateRoomChatResponse, CreateRoomChatResponse,
          CreateRoomChatResponse>
      get copyWith => _CreateRoomChatResponseCopyWithImpl(
          this as CreateRoomChatResponse, $identity, $identity);
  @override
  String toString() {
    return CreateRoomChatResponseMapper.ensureInitialized()
        .stringifyValue(this as CreateRoomChatResponse);
  }

  @override
  bool operator ==(Object other) {
    return CreateRoomChatResponseMapper.ensureInitialized()
        .equalsValue(this as CreateRoomChatResponse, other);
  }

  @override
  int get hashCode {
    return CreateRoomChatResponseMapper.ensureInitialized()
        .hashValue(this as CreateRoomChatResponse);
  }
}

extension CreateRoomChatResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateRoomChatResponse, $Out> {
  CreateRoomChatResponseCopyWith<$R, CreateRoomChatResponse, $Out>
      get $asCreateRoomChatResponse =>
          $base.as((v, t, t2) => _CreateRoomChatResponseCopyWithImpl(v, t, t2));
}

abstract class CreateRoomChatResponseCopyWith<
    $R,
    $In extends CreateRoomChatResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? RoomId});
  CreateRoomChatResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateRoomChatResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateRoomChatResponse, $Out>
    implements
        CreateRoomChatResponseCopyWith<$R, CreateRoomChatResponse, $Out> {
  _CreateRoomChatResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateRoomChatResponse> $mapper =
      CreateRoomChatResponseMapper.ensureInitialized();
  @override
  $R call({Object? RoomId = $none}) =>
      $apply(FieldCopyWithData({if (RoomId != $none) #RoomId: RoomId}));
  @override
  CreateRoomChatResponse $make(CopyWithData data) =>
      CreateRoomChatResponse(RoomId: data.get(#RoomId, or: $value.RoomId));

  @override
  CreateRoomChatResponseCopyWith<$R2, CreateRoomChatResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateRoomChatResponseCopyWithImpl($value, $cast, t);
}
