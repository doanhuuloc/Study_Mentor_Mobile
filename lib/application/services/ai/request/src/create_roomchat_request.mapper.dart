// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_roomchat_request.dart';

class CreateRoomChatRequestMapper
    extends ClassMapperBase<CreateRoomChatRequest> {
  CreateRoomChatRequestMapper._();

  static CreateRoomChatRequestMapper? _instance;
  static CreateRoomChatRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateRoomChatRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateRoomChatRequest';

  static String? _$TitleRoom(CreateRoomChatRequest v) => v.TitleRoom;
  static const Field<CreateRoomChatRequest, String> _f$TitleRoom =
      Field('TitleRoom', _$TitleRoom, opt: true);

  @override
  final MappableFields<CreateRoomChatRequest> fields = const {
    #TitleRoom: _f$TitleRoom,
  };

  static CreateRoomChatRequest _instantiate(DecodingData data) {
    return CreateRoomChatRequest(TitleRoom: data.dec(_f$TitleRoom));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateRoomChatRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateRoomChatRequest>(map);
  }

  static CreateRoomChatRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateRoomChatRequest>(json);
  }
}

mixin CreateRoomChatRequestMappable {
  String toJsonString() {
    return CreateRoomChatRequestMapper.ensureInitialized()
        .encodeJson<CreateRoomChatRequest>(this as CreateRoomChatRequest);
  }

  Map<String, dynamic> toJson() {
    return CreateRoomChatRequestMapper.ensureInitialized()
        .encodeMap<CreateRoomChatRequest>(this as CreateRoomChatRequest);
  }

  CreateRoomChatRequestCopyWith<CreateRoomChatRequest, CreateRoomChatRequest,
          CreateRoomChatRequest>
      get copyWith => _CreateRoomChatRequestCopyWithImpl(
          this as CreateRoomChatRequest, $identity, $identity);
  @override
  String toString() {
    return CreateRoomChatRequestMapper.ensureInitialized()
        .stringifyValue(this as CreateRoomChatRequest);
  }

  @override
  bool operator ==(Object other) {
    return CreateRoomChatRequestMapper.ensureInitialized()
        .equalsValue(this as CreateRoomChatRequest, other);
  }

  @override
  int get hashCode {
    return CreateRoomChatRequestMapper.ensureInitialized()
        .hashValue(this as CreateRoomChatRequest);
  }
}

extension CreateRoomChatRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateRoomChatRequest, $Out> {
  CreateRoomChatRequestCopyWith<$R, CreateRoomChatRequest, $Out>
      get $asCreateRoomChatRequest =>
          $base.as((v, t, t2) => _CreateRoomChatRequestCopyWithImpl(v, t, t2));
}

abstract class CreateRoomChatRequestCopyWith<
    $R,
    $In extends CreateRoomChatRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? TitleRoom});
  CreateRoomChatRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateRoomChatRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateRoomChatRequest, $Out>
    implements CreateRoomChatRequestCopyWith<$R, CreateRoomChatRequest, $Out> {
  _CreateRoomChatRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateRoomChatRequest> $mapper =
      CreateRoomChatRequestMapper.ensureInitialized();
  @override
  $R call({Object? TitleRoom = $none}) => $apply(
      FieldCopyWithData({if (TitleRoom != $none) #TitleRoom: TitleRoom}));
  @override
  CreateRoomChatRequest $make(CopyWithData data) => CreateRoomChatRequest(
      TitleRoom: data.get(#TitleRoom, or: $value.TitleRoom));

  @override
  CreateRoomChatRequestCopyWith<$R2, CreateRoomChatRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateRoomChatRequestCopyWithImpl($value, $cast, t);
}
