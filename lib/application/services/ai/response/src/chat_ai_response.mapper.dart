// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chat_ai_response.dart';

class ChatAIResponseMapper extends ClassMapperBase<ChatAIResponse> {
  ChatAIResponseMapper._();

  static ChatAIResponseMapper? _instance;
  static ChatAIResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatAIResponseMapper._());
      FileRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatAIResponse';

  static String? _$recipientId(ChatAIResponse v) => v.recipientId;
  static const Field<ChatAIResponse, String> _f$recipientId =
      Field('recipientId', _$recipientId, opt: true);
  static DateTime? _$createAt(ChatAIResponse v) => v.createAt;
  static const Field<ChatAIResponse, DateTime> _f$createAt =
      Field('createAt', _$createAt, opt: true);
  static String? _$questionId(ChatAIResponse v) => v.questionId;
  static const Field<ChatAIResponse, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);
  static String? _$senderId(ChatAIResponse v) => v.senderId;
  static const Field<ChatAIResponse, String> _f$senderId =
      Field('senderId', _$senderId, opt: true);
  static String? _$content(ChatAIResponse v) => v.content;
  static const Field<ChatAIResponse, String> _f$content =
      Field('content', _$content, opt: true);
  static FileRequest? _$files(ChatAIResponse v) => v.files;
  static const Field<ChatAIResponse, FileRequest> _f$files =
      Field('files', _$files, opt: true);

  @override
  final MappableFields<ChatAIResponse> fields = const {
    #recipientId: _f$recipientId,
    #createAt: _f$createAt,
    #questionId: _f$questionId,
    #senderId: _f$senderId,
    #content: _f$content,
    #files: _f$files,
  };

  static ChatAIResponse _instantiate(DecodingData data) {
    return ChatAIResponse(
        recipientId: data.dec(_f$recipientId),
        createAt: data.dec(_f$createAt),
        questionId: data.dec(_f$questionId),
        senderId: data.dec(_f$senderId),
        content: data.dec(_f$content),
        files: data.dec(_f$files));
  }

  @override
  final Function instantiate = _instantiate;

  static ChatAIResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChatAIResponse>(map);
  }

  static ChatAIResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<ChatAIResponse>(json);
  }
}

mixin ChatAIResponseMappable {
  String toJsonString() {
    return ChatAIResponseMapper.ensureInitialized()
        .encodeJson<ChatAIResponse>(this as ChatAIResponse);
  }

  Map<String, dynamic> toJson() {
    return ChatAIResponseMapper.ensureInitialized()
        .encodeMap<ChatAIResponse>(this as ChatAIResponse);
  }

  ChatAIResponseCopyWith<ChatAIResponse, ChatAIResponse, ChatAIResponse>
      get copyWith => _ChatAIResponseCopyWithImpl(
          this as ChatAIResponse, $identity, $identity);
  @override
  String toString() {
    return ChatAIResponseMapper.ensureInitialized()
        .stringifyValue(this as ChatAIResponse);
  }

  @override
  bool operator ==(Object other) {
    return ChatAIResponseMapper.ensureInitialized()
        .equalsValue(this as ChatAIResponse, other);
  }

  @override
  int get hashCode {
    return ChatAIResponseMapper.ensureInitialized()
        .hashValue(this as ChatAIResponse);
  }
}

extension ChatAIResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChatAIResponse, $Out> {
  ChatAIResponseCopyWith<$R, ChatAIResponse, $Out> get $asChatAIResponse =>
      $base.as((v, t, t2) => _ChatAIResponseCopyWithImpl(v, t, t2));
}

abstract class ChatAIResponseCopyWith<$R, $In extends ChatAIResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FileRequestCopyWith<$R, FileRequest, FileRequest>? get files;
  $R call(
      {String? recipientId,
      DateTime? createAt,
      String? questionId,
      String? senderId,
      String? content,
      FileRequest? files});
  ChatAIResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChatAIResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChatAIResponse, $Out>
    implements ChatAIResponseCopyWith<$R, ChatAIResponse, $Out> {
  _ChatAIResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChatAIResponse> $mapper =
      ChatAIResponseMapper.ensureInitialized();
  @override
  FileRequestCopyWith<$R, FileRequest, FileRequest>? get files =>
      $value.files?.copyWith.$chain((v) => call(files: v));
  @override
  $R call(
          {Object? recipientId = $none,
          Object? createAt = $none,
          Object? questionId = $none,
          Object? senderId = $none,
          Object? content = $none,
          Object? files = $none}) =>
      $apply(FieldCopyWithData({
        if (recipientId != $none) #recipientId: recipientId,
        if (createAt != $none) #createAt: createAt,
        if (questionId != $none) #questionId: questionId,
        if (senderId != $none) #senderId: senderId,
        if (content != $none) #content: content,
        if (files != $none) #files: files
      }));
  @override
  ChatAIResponse $make(CopyWithData data) => ChatAIResponse(
      recipientId: data.get(#recipientId, or: $value.recipientId),
      createAt: data.get(#createAt, or: $value.createAt),
      questionId: data.get(#questionId, or: $value.questionId),
      senderId: data.get(#senderId, or: $value.senderId),
      content: data.get(#content, or: $value.content),
      files: data.get(#files, or: $value.files));

  @override
  ChatAIResponseCopyWith<$R2, ChatAIResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChatAIResponseCopyWithImpl($value, $cast, t);
}
