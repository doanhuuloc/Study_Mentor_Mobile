// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_detailed_roomchat_response.dart';

class GetDetailedRoomChatReponseMapper
    extends ClassMapperBase<GetDetailedRoomChatReponse> {
  GetDetailedRoomChatReponseMapper._();

  static GetDetailedRoomChatReponseMapper? _instance;
  static GetDetailedRoomChatReponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GetDetailedRoomChatReponseMapper._());
      ReceiveMessageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetDetailedRoomChatReponse';

  static List<ReceiveMessage>? _$listMessage(GetDetailedRoomChatReponse v) =>
      v.listMessage;
  static const Field<GetDetailedRoomChatReponse, List<ReceiveMessage>>
      _f$listMessage = Field('listMessage', _$listMessage, opt: true);

  @override
  final MappableFields<GetDetailedRoomChatReponse> fields = const {
    #listMessage: _f$listMessage,
  };

  static GetDetailedRoomChatReponse _instantiate(DecodingData data) {
    return GetDetailedRoomChatReponse(listMessage: data.dec(_f$listMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static GetDetailedRoomChatReponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetDetailedRoomChatReponse>(map);
  }

  static GetDetailedRoomChatReponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<GetDetailedRoomChatReponse>(json);
  }
}

mixin GetDetailedRoomChatReponseMappable {
  String toJsonString() {
    return GetDetailedRoomChatReponseMapper.ensureInitialized()
        .encodeJson<GetDetailedRoomChatReponse>(
            this as GetDetailedRoomChatReponse);
  }

  Map<String, dynamic> toJson() {
    return GetDetailedRoomChatReponseMapper.ensureInitialized()
        .encodeMap<GetDetailedRoomChatReponse>(
            this as GetDetailedRoomChatReponse);
  }

  GetDetailedRoomChatReponseCopyWith<GetDetailedRoomChatReponse,
          GetDetailedRoomChatReponse, GetDetailedRoomChatReponse>
      get copyWith => _GetDetailedRoomChatReponseCopyWithImpl(
          this as GetDetailedRoomChatReponse, $identity, $identity);
  @override
  String toString() {
    return GetDetailedRoomChatReponseMapper.ensureInitialized()
        .stringifyValue(this as GetDetailedRoomChatReponse);
  }

  @override
  bool operator ==(Object other) {
    return GetDetailedRoomChatReponseMapper.ensureInitialized()
        .equalsValue(this as GetDetailedRoomChatReponse, other);
  }

  @override
  int get hashCode {
    return GetDetailedRoomChatReponseMapper.ensureInitialized()
        .hashValue(this as GetDetailedRoomChatReponse);
  }
}

extension GetDetailedRoomChatReponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetDetailedRoomChatReponse, $Out> {
  GetDetailedRoomChatReponseCopyWith<$R, GetDetailedRoomChatReponse, $Out>
      get $asGetDetailedRoomChatReponse => $base
          .as((v, t, t2) => _GetDetailedRoomChatReponseCopyWithImpl(v, t, t2));
}

abstract class GetDetailedRoomChatReponseCopyWith<
    $R,
    $In extends GetDetailedRoomChatReponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ReceiveMessage,
          ReceiveMessageCopyWith<$R, ReceiveMessage, ReceiveMessage>>?
      get listMessage;
  $R call({List<ReceiveMessage>? listMessage});
  GetDetailedRoomChatReponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetDetailedRoomChatReponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetDetailedRoomChatReponse, $Out>
    implements
        GetDetailedRoomChatReponseCopyWith<$R, GetDetailedRoomChatReponse,
            $Out> {
  _GetDetailedRoomChatReponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetDetailedRoomChatReponse> $mapper =
      GetDetailedRoomChatReponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ReceiveMessage,
          ReceiveMessageCopyWith<$R, ReceiveMessage, ReceiveMessage>>?
      get listMessage => $value.listMessage != null
          ? ListCopyWith($value.listMessage!, (v, t) => v.copyWith.$chain(t),
              (v) => call(listMessage: v))
          : null;
  @override
  $R call({Object? listMessage = $none}) => $apply(
      FieldCopyWithData({if (listMessage != $none) #listMessage: listMessage}));
  @override
  GetDetailedRoomChatReponse $make(CopyWithData data) =>
      GetDetailedRoomChatReponse(
          listMessage: data.get(#listMessage, or: $value.listMessage));

  @override
  GetDetailedRoomChatReponseCopyWith<$R2, GetDetailedRoomChatReponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetDetailedRoomChatReponseCopyWithImpl($value, $cast, t);
}
