// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'receive_message.dart';

class ReceiveMessageMapper extends ClassMapperBase<ReceiveMessage> {
  ReceiveMessageMapper._();

  static ReceiveMessageMapper? _instance;
  static ReceiveMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReceiveMessageMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ReceiveMessage';

  static String? _$senderId(ReceiveMessage v) => v.senderId;
  static const Field<ReceiveMessage, String> _f$senderId =
      Field('senderId', _$senderId, opt: true);
  static String? _$recipientId(ReceiveMessage v) => v.recipientId;
  static const Field<ReceiveMessage, String> _f$recipientId =
      Field('recipientId', _$recipientId, opt: true);
  static String? _$roomId(ReceiveMessage v) => v.roomId;
  static const Field<ReceiveMessage, String> _f$roomId =
      Field('roomId', _$roomId, opt: true);
  static String? _$content(ReceiveMessage v) => v.content;
  static const Field<ReceiveMessage, String> _f$content =
      Field('content', _$content, opt: true);
  static List<FileRequest>? _$files(ReceiveMessage v) => v.files;
  static const Field<ReceiveMessage, List<FileRequest>> _f$files =
      Field('files', _$files, opt: true);
  static DateTime? _$createdAt(ReceiveMessage v) => v.createdAt;
  static const Field<ReceiveMessage, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);

  @override
  final MappableFields<ReceiveMessage> fields = const {
    #senderId: _f$senderId,
    #recipientId: _f$recipientId,
    #roomId: _f$roomId,
    #content: _f$content,
    #files: _f$files,
    #createdAt: _f$createdAt,
  };

  static ReceiveMessage _instantiate(DecodingData data) {
    return ReceiveMessage(
        senderId: data.dec(_f$senderId),
        recipientId: data.dec(_f$recipientId),
        roomId: data.dec(_f$roomId),
        content: data.dec(_f$content),
        files: data.dec(_f$files),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ReceiveMessage fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReceiveMessage>(map);
  }

  static ReceiveMessage fromJsonString(String json) {
    return ensureInitialized().decodeJson<ReceiveMessage>(json);
  }
}

mixin ReceiveMessageMappable {
  String toJsonString() {
    return ReceiveMessageMapper.ensureInitialized()
        .encodeJson<ReceiveMessage>(this as ReceiveMessage);
  }

  Map<String, dynamic> toJson() {
    return ReceiveMessageMapper.ensureInitialized()
        .encodeMap<ReceiveMessage>(this as ReceiveMessage);
  }

  ReceiveMessageCopyWith<ReceiveMessage, ReceiveMessage, ReceiveMessage>
      get copyWith => _ReceiveMessageCopyWithImpl(
          this as ReceiveMessage, $identity, $identity);
  @override
  String toString() {
    return ReceiveMessageMapper.ensureInitialized()
        .stringifyValue(this as ReceiveMessage);
  }

  @override
  bool operator ==(Object other) {
    return ReceiveMessageMapper.ensureInitialized()
        .equalsValue(this as ReceiveMessage, other);
  }

  @override
  int get hashCode {
    return ReceiveMessageMapper.ensureInitialized()
        .hashValue(this as ReceiveMessage);
  }
}

extension ReceiveMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReceiveMessage, $Out> {
  ReceiveMessageCopyWith<$R, ReceiveMessage, $Out> get $asReceiveMessage =>
      $base.as((v, t, t2) => _ReceiveMessageCopyWithImpl(v, t, t2));
}

abstract class ReceiveMessageCopyWith<$R, $In extends ReceiveMessage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileRequest,
      FileRequestCopyWith<$R, FileRequest, FileRequest>>? get files;
  $R call(
      {String? senderId,
      String? recipientId,
      String? roomId,
      String? content,
      List<FileRequest>? files,
      DateTime? createdAt});
  ReceiveMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ReceiveMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReceiveMessage, $Out>
    implements ReceiveMessageCopyWith<$R, ReceiveMessage, $Out> {
  _ReceiveMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReceiveMessage> $mapper =
      ReceiveMessageMapper.ensureInitialized();
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
          Object? files = $none,
          Object? createdAt = $none}) =>
      $apply(FieldCopyWithData({
        if (senderId != $none) #senderId: senderId,
        if (recipientId != $none) #recipientId: recipientId,
        if (roomId != $none) #roomId: roomId,
        if (content != $none) #content: content,
        if (files != $none) #files: files,
        if (createdAt != $none) #createdAt: createdAt
      }));
  @override
  ReceiveMessage $make(CopyWithData data) => ReceiveMessage(
      senderId: data.get(#senderId, or: $value.senderId),
      recipientId: data.get(#recipientId, or: $value.recipientId),
      roomId: data.get(#roomId, or: $value.roomId),
      content: data.get(#content, or: $value.content),
      files: data.get(#files, or: $value.files),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  ReceiveMessageCopyWith<$R2, ReceiveMessage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReceiveMessageCopyWithImpl($value, $cast, t);
}
