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
    }
    return _instance!;
  }

  @override
  final String id = 'ChatAIResponse';

  static String? _$contactId(ChatAIResponse v) => v.contactId;
  static const Field<ChatAIResponse, String> _f$contactId =
      Field('contactId', _$contactId, opt: true);
  static String? _$createAt(ChatAIResponse v) => v.createAt;
  static const Field<ChatAIResponse, String> _f$createAt =
      Field('createAt', _$createAt, opt: true);
  static String? _$questionId(ChatAIResponse v) => v.questionId;
  static const Field<ChatAIResponse, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);
  static String? _$senderId(ChatAIResponse v) => v.senderId;
  static const Field<ChatAIResponse, String> _f$senderId =
      Field('senderId', _$senderId, opt: true);
  static String? _$value(ChatAIResponse v) => v.value;
  static const Field<ChatAIResponse, String> _f$value =
      Field('value', _$value, opt: true);

  @override
  final MappableFields<ChatAIResponse> fields = const {
    #contactId: _f$contactId,
    #createAt: _f$createAt,
    #questionId: _f$questionId,
    #senderId: _f$senderId,
    #value: _f$value,
  };

  static ChatAIResponse _instantiate(DecodingData data) {
    return ChatAIResponse(
        contactId: data.dec(_f$contactId),
        createAt: data.dec(_f$createAt),
        questionId: data.dec(_f$questionId),
        senderId: data.dec(_f$senderId),
        value: data.dec(_f$value));
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
  $R call(
      {String? contactId,
      String? createAt,
      String? questionId,
      String? senderId,
      String? value});
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
  $R call(
          {Object? contactId = $none,
          Object? createAt = $none,
          Object? questionId = $none,
          Object? senderId = $none,
          Object? value = $none}) =>
      $apply(FieldCopyWithData({
        if (contactId != $none) #contactId: contactId,
        if (createAt != $none) #createAt: createAt,
        if (questionId != $none) #questionId: questionId,
        if (senderId != $none) #senderId: senderId,
        if (value != $none) #value: value
      }));
  @override
  ChatAIResponse $make(CopyWithData data) => ChatAIResponse(
      contactId: data.get(#contactId, or: $value.contactId),
      createAt: data.get(#createAt, or: $value.createAt),
      questionId: data.get(#questionId, or: $value.questionId),
      senderId: data.get(#senderId, or: $value.senderId),
      value: data.get(#value, or: $value.value));

  @override
  ChatAIResponseCopyWith<$R2, ChatAIResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChatAIResponseCopyWithImpl($value, $cast, t);
}
