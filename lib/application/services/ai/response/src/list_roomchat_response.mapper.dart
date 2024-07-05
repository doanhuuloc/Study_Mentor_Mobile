// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'list_roomchat_response.dart';

class ListRoomChatResponseMapper extends ClassMapperBase<ListRoomChatResponse> {
  ListRoomChatResponseMapper._();

  static ListRoomChatResponseMapper? _instance;
  static ListRoomChatResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ListRoomChatResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ListRoomChatResponse';

  static String? _$roomId(ListRoomChatResponse v) => v.roomId;
  static const Field<ListRoomChatResponse, String> _f$roomId =
      Field('roomId', _$roomId, opt: true);
  static String? _$title(ListRoomChatResponse v) => v.title;
  static const Field<ListRoomChatResponse, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$senderId(ListRoomChatResponse v) => v.senderId;
  static const Field<ListRoomChatResponse, String> _f$senderId =
      Field('senderId', _$senderId, opt: true);
  static String? _$recipientId(ListRoomChatResponse v) => v.recipientId;
  static const Field<ListRoomChatResponse, String> _f$recipientId =
      Field('recipientId', _$recipientId, opt: true);
  static DateTime? _$createdAt(ListRoomChatResponse v) => v.createdAt;
  static const Field<ListRoomChatResponse, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);

  @override
  final MappableFields<ListRoomChatResponse> fields = const {
    #roomId: _f$roomId,
    #title: _f$title,
    #senderId: _f$senderId,
    #recipientId: _f$recipientId,
    #createdAt: _f$createdAt,
  };

  static ListRoomChatResponse _instantiate(DecodingData data) {
    return ListRoomChatResponse(
        roomId: data.dec(_f$roomId),
        title: data.dec(_f$title),
        senderId: data.dec(_f$senderId),
        recipientId: data.dec(_f$recipientId),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ListRoomChatResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ListRoomChatResponse>(map);
  }

  static ListRoomChatResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<ListRoomChatResponse>(json);
  }
}

mixin ListRoomChatResponseMappable {
  String toJsonString() {
    return ListRoomChatResponseMapper.ensureInitialized()
        .encodeJson<ListRoomChatResponse>(this as ListRoomChatResponse);
  }

  Map<String, dynamic> toJson() {
    return ListRoomChatResponseMapper.ensureInitialized()
        .encodeMap<ListRoomChatResponse>(this as ListRoomChatResponse);
  }

  ListRoomChatResponseCopyWith<ListRoomChatResponse, ListRoomChatResponse,
          ListRoomChatResponse>
      get copyWith => _ListRoomChatResponseCopyWithImpl(
          this as ListRoomChatResponse, $identity, $identity);
  @override
  String toString() {
    return ListRoomChatResponseMapper.ensureInitialized()
        .stringifyValue(this as ListRoomChatResponse);
  }

  @override
  bool operator ==(Object other) {
    return ListRoomChatResponseMapper.ensureInitialized()
        .equalsValue(this as ListRoomChatResponse, other);
  }

  @override
  int get hashCode {
    return ListRoomChatResponseMapper.ensureInitialized()
        .hashValue(this as ListRoomChatResponse);
  }
}

extension ListRoomChatResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ListRoomChatResponse, $Out> {
  ListRoomChatResponseCopyWith<$R, ListRoomChatResponse, $Out>
      get $asListRoomChatResponse =>
          $base.as((v, t, t2) => _ListRoomChatResponseCopyWithImpl(v, t, t2));
}

abstract class ListRoomChatResponseCopyWith<
    $R,
    $In extends ListRoomChatResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? roomId,
      String? title,
      String? senderId,
      String? recipientId,
      DateTime? createdAt});
  ListRoomChatResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ListRoomChatResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ListRoomChatResponse, $Out>
    implements ListRoomChatResponseCopyWith<$R, ListRoomChatResponse, $Out> {
  _ListRoomChatResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ListRoomChatResponse> $mapper =
      ListRoomChatResponseMapper.ensureInitialized();
  @override
  $R call(
          {Object? roomId = $none,
          Object? title = $none,
          Object? senderId = $none,
          Object? recipientId = $none,
          Object? createdAt = $none}) =>
      $apply(FieldCopyWithData({
        if (roomId != $none) #roomId: roomId,
        if (title != $none) #title: title,
        if (senderId != $none) #senderId: senderId,
        if (recipientId != $none) #recipientId: recipientId,
        if (createdAt != $none) #createdAt: createdAt
      }));
  @override
  ListRoomChatResponse $make(CopyWithData data) => ListRoomChatResponse(
      roomId: data.get(#roomId, or: $value.roomId),
      title: data.get(#title, or: $value.title),
      senderId: data.get(#senderId, or: $value.senderId),
      recipientId: data.get(#recipientId, or: $value.recipientId),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ListRoomChatResponseCopyWith<$R2, ListRoomChatResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ListRoomChatResponseCopyWithImpl($value, $cast, t);
}
