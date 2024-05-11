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
    }
    return _instance!;
  }

  @override
  final String id = 'ChatAIRequest';

  static String? _$question(ChatAIRequest v) => v.question;
  static const Field<ChatAIRequest, String> _f$question =
      Field('question', _$question, opt: true);

  @override
  final MappableFields<ChatAIRequest> fields = const {
    #question: _f$question,
  };

  static ChatAIRequest _instantiate(DecodingData data) {
    return ChatAIRequest(question: data.dec(_f$question));
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
  $R call({String? question});
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
  $R call({Object? question = $none}) =>
      $apply(FieldCopyWithData({if (question != $none) #question: question}));
  @override
  ChatAIRequest $make(CopyWithData data) =>
      ChatAIRequest(question: data.get(#question, or: $value.question));

  @override
  ChatAIRequestCopyWith<$R2, ChatAIRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChatAIRequestCopyWithImpl($value, $cast, t);
}
