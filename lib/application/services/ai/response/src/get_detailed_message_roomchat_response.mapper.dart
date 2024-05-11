// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_detailed_message_roomchat_response.dart';

class GetDetailedMessageRoomChatResponseMapper
    extends ClassMapperBase<GetDetailedMessageRoomChatResponse> {
  GetDetailedMessageRoomChatResponseMapper._();

  static GetDetailedMessageRoomChatResponseMapper? _instance;
  static GetDetailedMessageRoomChatResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GetDetailedMessageRoomChatResponseMapper._());
      ChatAIResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetDetailedMessageRoomChatResponse';

  static List<ChatAIResponse>? _$response(
          GetDetailedMessageRoomChatResponse v) =>
      v.response;
  static const Field<GetDetailedMessageRoomChatResponse, List<ChatAIResponse>>
      _f$response = Field('response', _$response, opt: true);

  @override
  final MappableFields<GetDetailedMessageRoomChatResponse> fields = const {
    #response: _f$response,
  };

  static GetDetailedMessageRoomChatResponse _instantiate(DecodingData data) {
    return GetDetailedMessageRoomChatResponse(response: data.dec(_f$response));
  }

  @override
  final Function instantiate = _instantiate;

  static GetDetailedMessageRoomChatResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<GetDetailedMessageRoomChatResponse>(map);
  }

  static GetDetailedMessageRoomChatResponse fromJsonString(String json) {
    return ensureInitialized()
        .decodeJson<GetDetailedMessageRoomChatResponse>(json);
  }
}

mixin GetDetailedMessageRoomChatResponseMappable {
  String toJsonString() {
    return GetDetailedMessageRoomChatResponseMapper.ensureInitialized()
        .encodeJson<GetDetailedMessageRoomChatResponse>(
            this as GetDetailedMessageRoomChatResponse);
  }

  Map<String, dynamic> toJson() {
    return GetDetailedMessageRoomChatResponseMapper.ensureInitialized()
        .encodeMap<GetDetailedMessageRoomChatResponse>(
            this as GetDetailedMessageRoomChatResponse);
  }

  GetDetailedMessageRoomChatResponseCopyWith<
          GetDetailedMessageRoomChatResponse,
          GetDetailedMessageRoomChatResponse,
          GetDetailedMessageRoomChatResponse>
      get copyWith => _GetDetailedMessageRoomChatResponseCopyWithImpl(
          this as GetDetailedMessageRoomChatResponse, $identity, $identity);
  @override
  String toString() {
    return GetDetailedMessageRoomChatResponseMapper.ensureInitialized()
        .stringifyValue(this as GetDetailedMessageRoomChatResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetDetailedMessageRoomChatResponseMapper.ensureInitialized()
        .equalsValue(this as GetDetailedMessageRoomChatResponse, other);
  }

  @override
  int get hashCode {
    return GetDetailedMessageRoomChatResponseMapper.ensureInitialized()
        .hashValue(this as GetDetailedMessageRoomChatResponse);
  }
}

extension GetDetailedMessageRoomChatResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetDetailedMessageRoomChatResponse, $Out> {
  GetDetailedMessageRoomChatResponseCopyWith<$R,
          GetDetailedMessageRoomChatResponse, $Out>
      get $asGetDetailedMessageRoomChatResponse => $base.as((v, t, t2) =>
          _GetDetailedMessageRoomChatResponseCopyWithImpl(v, t, t2));
}

abstract class GetDetailedMessageRoomChatResponseCopyWith<
    $R,
    $In extends GetDetailedMessageRoomChatResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ChatAIResponse,
      ChatAIResponseCopyWith<$R, ChatAIResponse, ChatAIResponse>>? get response;
  $R call({List<ChatAIResponse>? response});
  GetDetailedMessageRoomChatResponseCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GetDetailedMessageRoomChatResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetDetailedMessageRoomChatResponse, $Out>
    implements
        GetDetailedMessageRoomChatResponseCopyWith<$R,
            GetDetailedMessageRoomChatResponse, $Out> {
  _GetDetailedMessageRoomChatResponseCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetDetailedMessageRoomChatResponse> $mapper =
      GetDetailedMessageRoomChatResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ChatAIResponse,
          ChatAIResponseCopyWith<$R, ChatAIResponse, ChatAIResponse>>?
      get response => $value.response != null
          ? ListCopyWith($value.response!, (v, t) => v.copyWith.$chain(t),
              (v) => call(response: v))
          : null;
  @override
  $R call({Object? response = $none}) =>
      $apply(FieldCopyWithData({if (response != $none) #response: response}));
  @override
  GetDetailedMessageRoomChatResponse $make(CopyWithData data) =>
      GetDetailedMessageRoomChatResponse(
          response: data.get(#response, or: $value.response));

  @override
  GetDetailedMessageRoomChatResponseCopyWith<$R2,
      GetDetailedMessageRoomChatResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetDetailedMessageRoomChatResponseCopyWithImpl($value, $cast, t);
}
