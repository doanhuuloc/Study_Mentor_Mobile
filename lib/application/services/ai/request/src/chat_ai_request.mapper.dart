// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chat_ai_request.dart';

class ChatAIRequestMapper extends ClassMapperBase<ChatAIRequest> {
  ChatAIRequestMapper._();

  static ChatAIRequestMapper? _instance;
  static ChatAIRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatAIRequestMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatAIRequest';

  static String? _$questionId(ChatAIRequest v) => v.questionId;
  static const Field<ChatAIRequest, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);
  static String? _$question(ChatAIRequest v) => v.question;
  static const Field<ChatAIRequest, String> _f$question =
      Field('question', _$question, opt: true);
  static String? _$senderId(ChatAIRequest v) => v.senderId;
  static const Field<ChatAIRequest, String> _f$senderId =
      Field('senderId', _$senderId, opt: true);
  static String? _$recipientId(ChatAIRequest v) => v.recipientId;
  static const Field<ChatAIRequest, String> _f$recipientId =
      Field('recipientId', _$recipientId, opt: true);
  static String? _$roomId(ChatAIRequest v) => v.roomId;
  static const Field<ChatAIRequest, String> _f$roomId =
      Field('roomId', _$roomId, opt: true);
  static FileRequest? _$file(ChatAIRequest v) => v.file;
  static const Field<ChatAIRequest, FileRequest> _f$file =
      Field('file', _$file, opt: true);

  @override
  final MappableFields<ChatAIRequest> fields = const {
    #questionId: _f$questionId,
    #question: _f$question,
    #senderId: _f$senderId,
    #recipientId: _f$recipientId,
    #roomId: _f$roomId,
    #file: _f$file,
  };

  static ChatAIRequest _instantiate(DecodingData data) {
    return ChatAIRequest(
        questionId: data.dec(_f$questionId),
        question: data.dec(_f$question),
        senderId: data.dec(_f$senderId),
        recipientId: data.dec(_f$recipientId),
        roomId: data.dec(_f$roomId),
        file: data.dec(_f$file));
  }

  @override
  final Function instantiate = _instantiate;

  static ChatAIRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatAIRequest>(map);
  }

  static ChatAIRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<ChatAIRequest>(json);
  }
}

mixin ChatAIRequestMappable {
  String toJsonString() {
    return ChatAIRequestMapper.ensureInitialized()
        .encodeJson<ChatAIRequest>(this as ChatAIRequest);
  }

  Map<String, dynamic> toJson() {
    return ChatAIRequestMapper.ensureInitialized()
        .encodeMap<ChatAIRequest>(this as ChatAIRequest);
  }

  ChatAIRequestCopyWith<ChatAIRequest, ChatAIRequest, ChatAIRequest>
      get copyWith => _ChatAIRequestCopyWithImpl(
          this as ChatAIRequest, $identity, $identity);
  @override
  String toString() {
    return ChatAIRequestMapper.ensureInitialized()
        .stringifyValue(this as ChatAIRequest);
  }

  @override
  bool operator ==(Object other) {
    return ChatAIRequestMapper.ensureInitialized()
        .equalsValue(this as ChatAIRequest, other);
  }

  @override
  int get hashCode {
    return ChatAIRequestMapper.ensureInitialized()
        .hashValue(this as ChatAIRequest);
  }
}

extension ChatAIRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatAIRequest, $Out> {
  ChatAIRequestCopyWith<$R, ChatAIRequest, $Out> get $asChatAIRequest =>
      $base.as((v, t, t2) => _ChatAIRequestCopyWithImpl(v, t, t2));
}

abstract class ChatAIRequestCopyWith<$R, $In extends ChatAIRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FileRequestCopyWith<$R, FileRequest, FileRequest>? get file;
  $R call(
      {String? questionId,
      String? question,
      String? senderId,
      String? recipientId,
      String? roomId,
      FileRequest? file});
  ChatAIRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChatAIRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatAIRequest, $Out>
    implements ChatAIRequestCopyWith<$R, ChatAIRequest, $Out> {
  _ChatAIRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatAIRequest> $mapper =
      ChatAIRequestMapper.ensureInitialized();
  @override
  FileRequestCopyWith<$R, FileRequest, FileRequest>? get file =>
      $value.file?.copyWith.$chain((v) => call(file: v));
  @override
  $R call(
          {Object? questionId = $none,
          Object? question = $none,
          Object? senderId = $none,
          Object? recipientId = $none,
          Object? roomId = $none,
          Object? file = $none}) =>
      $apply(FieldCopyWithData({
        if (questionId != $none) #questionId: questionId,
        if (question != $none) #question: question,
        if (senderId != $none) #senderId: senderId,
        if (recipientId != $none) #recipientId: recipientId,
        if (roomId != $none) #roomId: roomId,
        if (file != $none) #file: file
      }));
  @override
  ChatAIRequest $make(CopyWithData data) => ChatAIRequest(
      questionId: data.get(#questionId, or: $value.questionId),
      question: data.get(#question, or: $value.question),
      senderId: data.get(#senderId, or: $value.senderId),
      recipientId: data.get(#recipientId, or: $value.recipientId),
      roomId: data.get(#roomId, or: $value.roomId),
      file: data.get(#file, or: $value.file));

  @override
  ChatAIRequestCopyWith<$R2, ChatAIRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChatAIRequestCopyWithImpl($value, $cast, t);
}
