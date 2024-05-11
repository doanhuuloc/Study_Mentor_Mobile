// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chat_ai_request.dart';

class ModelAIMapper extends EnumMapper<ModelAI> {
  ModelAIMapper._();

  static ModelAIMapper? _instance;
  static ModelAIMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ModelAIMapper._());
    }
    return _instance!;
  }

  static ModelAI fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ModelAI decode(dynamic value) {
    switch (value) {
      case 'PAY':
        return ModelAI.pay;
      case 'GEMINI':
        return ModelAI.gemini;
      case 'CHATGPT':
        return ModelAI.chatgpt;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ModelAI self) {
    switch (self) {
      case ModelAI.pay:
        return 'PAY';
      case ModelAI.gemini:
        return 'GEMINI';
      case ModelAI.chatgpt:
        return 'CHATGPT';
    }
  }
}

extension ModelAIMapperExtension on ModelAI {
  String toValue() {
    ModelAIMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ModelAI>(this) as String;
  }
}

class ChatAIRequestMapper extends ClassMapperBase<ChatAIRequest> {
  ChatAIRequestMapper._();

  static ChatAIRequestMapper? _instance;
  static ChatAIRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChatAIRequestMapper._());
      ModelAIMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChatAIRequest';

  static String? _$question(ChatAIRequest v) => v.question;
  static const Field<ChatAIRequest, String> _f$question =
      Field('question', _$question, opt: true);
  static ModelAI? _$modelAI(ChatAIRequest v) => v.modelAI;
  static const Field<ChatAIRequest, ModelAI> _f$modelAI =
      Field('modelAI', _$modelAI, opt: true);
  static String? _$userId(ChatAIRequest v) => v.userId;
  static const Field<ChatAIRequest, String> _f$userId =
      Field('userId', _$userId, opt: true);
  static String? _$roomId(ChatAIRequest v) => v.roomId;
  static const Field<ChatAIRequest, String> _f$roomId =
      Field('roomId', _$roomId, opt: true);

  @override
  final MappableFields<ChatAIRequest> fields = const {
    #question: _f$question,
    #modelAI: _f$modelAI,
    #userId: _f$userId,
    #roomId: _f$roomId,
  };

  static ChatAIRequest _instantiate(DecodingData data) {
    return ChatAIRequest(
        question: data.dec(_f$question),
        modelAI: data.dec(_f$modelAI),
        userId: data.dec(_f$userId),
        roomId: data.dec(_f$roomId));
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
  $R call({String? question, ModelAI? modelAI, String? userId, String? roomId});
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
  $R call(
          {Object? question = $none,
          Object? modelAI = $none,
          Object? userId = $none,
          Object? roomId = $none}) =>
      $apply(FieldCopyWithData({
        if (question != $none) #question: question,
        if (modelAI != $none) #modelAI: modelAI,
        if (userId != $none) #userId: userId,
        if (roomId != $none) #roomId: roomId
      }));
  @override
  ChatAIRequest $make(CopyWithData data) => ChatAIRequest(
      question: data.get(#question, or: $value.question),
      modelAI: data.get(#modelAI, or: $value.modelAI),
      userId: data.get(#userId, or: $value.userId),
      roomId: data.get(#roomId, or: $value.roomId));

  @override
  ChatAIRequestCopyWith<$R2, ChatAIRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChatAIRequestCopyWithImpl($value, $cast, t);
}
