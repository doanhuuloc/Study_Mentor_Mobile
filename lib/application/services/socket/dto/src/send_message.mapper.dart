// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'send_message.dart';

class SendMessageMapper extends ClassMapperBase<SendMessage> {
  SendMessageMapper._();

  static SendMessageMapper? _instance;
  static SendMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SendMessageMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SendMessage';

  static String? _$senderId(SendMessage v) => v.senderId;
  static const Field<SendMessage, String> _f$senderId =
      Field('senderId', _$senderId, opt: true);
  static String? _$recipientId(SendMessage v) => v.recipientId;
  static const Field<SendMessage, String> _f$recipientId =
      Field('recipientId', _$recipientId, opt: true);
  static String? _$roomId(SendMessage v) => v.roomId;
  static const Field<SendMessage, String> _f$roomId =
      Field('roomId', _$roomId, opt: true);
  static String? _$content(SendMessage v) => v.content;
  static const Field<SendMessage, String> _f$content =
      Field('content', _$content, opt: true);
  static List<FileRequest>? _$files(SendMessage v) => v.files;
  static const Field<SendMessage, List<FileRequest>> _f$files =
      Field('files', _$files, opt: true);

  @override
  final MappableFields<SendMessage> fields = const {
    #senderId: _f$senderId,
    #recipientId: _f$recipientId,
    #roomId: _f$roomId,
    #content: _f$content,
    #files: _f$files,
  };

  static SendMessage _instantiate(DecodingData data) {
    return SendMessage(
        senderId: data.dec(_f$senderId),
        recipientId: data.dec(_f$recipientId),
        roomId: data.dec(_f$roomId),
        content: data.dec(_f$content),
        files: data.dec(_f$files));
  }

  @override
  final Function instantiate = _instantiate;

  static SendMessage fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SendMessage>(map);
  }

  static SendMessage fromJsonString(String json) {
    return ensureInitialized().decodeJson<SendMessage>(json);
  }
}

mixin SendMessageMappable {
  String toJsonString() {
    return SendMessageMapper.ensureInitialized()
        .encodeJson<SendMessage>(this as SendMessage);
  }

  Map<String, dynamic> toJson() {
    return SendMessageMapper.ensureInitialized()
        .encodeMap<SendMessage>(this as SendMessage);
  }

  SendMessageCopyWith<SendMessage, SendMessage, SendMessage> get copyWith =>
      _SendMessageCopyWithImpl(this as SendMessage, $identity, $identity);
  @override
  String toString() {
    return SendMessageMapper.ensureInitialized()
        .stringifyValue(this as SendMessage);
  }

  @override
  bool operator ==(Object other) {
    return SendMessageMapper.ensureInitialized()
        .equalsValue(this as SendMessage, other);
  }

  @override
  int get hashCode {
    return SendMessageMapper.ensureInitialized().hashValue(this as SendMessage);
  }
}

extension SendMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SendMessage, $Out> {
  SendMessageCopyWith<$R, SendMessage, $Out> get $asSendMessage =>
      $base.as((v, t, t2) => _SendMessageCopyWithImpl(v, t, t2));
}

abstract class SendMessageCopyWith<$R, $In extends SendMessage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileRequest,
      FileRequestCopyWith<$R, FileRequest, FileRequest>>? get files;
  $R call(
      {String? senderId,
      String? recipientId,
      String? roomId,
      String? content,
      List<FileRequest>? files});
  SendMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SendMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SendMessage, $Out>
    implements SendMessageCopyWith<$R, SendMessage, $Out> {
  _SendMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SendMessage> $mapper =
      SendMessageMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FileRequest,
          FileRequestCopyWith<$R, FileRequest, FileRequest>>?
      get files => $value.files != null
          ? ListCopyWith($value.files!, (v, t) => v.copyWith.$chain(t),
              (v) => call(files: v))
          : null;
  @override
  $R call(
          {Object? senderId = $none,
          Object? recipientId = $none,
          Object? roomId = $none,
          Object? content = $none,
          Object? files = $none}) =>
      $apply(FieldCopyWithData({
        if (senderId != $none) #senderId: senderId,
        if (recipientId != $none) #recipientId: recipientId,
        if (roomId != $none) #roomId: roomId,
        if (content != $none) #content: content,
        if (files != $none) #files: files
      }));
  @override
  SendMessage $make(CopyWithData data) => SendMessage(
      senderId: data.get(#senderId, or: $value.senderId),
      recipientId: data.get(#recipientId, or: $value.recipientId),
      roomId: data.get(#roomId, or: $value.roomId),
      content: data.get(#content, or: $value.content),
      files: data.get(#files, or: $value.files));

  @override
  SendMessageCopyWith<$R2, SendMessage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SendMessageCopyWithImpl($value, $cast, t);
}
