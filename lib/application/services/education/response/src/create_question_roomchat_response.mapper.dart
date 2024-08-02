// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_question_roomchat_response.dart';

class CreateQuestionRoomChatResponseMapper
    extends ClassMapperBase<CreateQuestionRoomChatResponse> {
  CreateQuestionRoomChatResponseMapper._();

  static CreateQuestionRoomChatResponseMapper? _instance;
  static CreateQuestionRoomChatResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = CreateQuestionRoomChatResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateQuestionRoomChatResponse';

  static String? _$roomId(CreateQuestionRoomChatResponse v) => v.roomId;
  static const Field<CreateQuestionRoomChatResponse, String> _f$roomId =
      Field('roomId', _$roomId, opt: true);

  @override
  final MappableFields<CreateQuestionRoomChatResponse> fields = const {
    #roomId: _f$roomId,
  };

  static CreateQuestionRoomChatResponse _instantiate(DecodingData data) {
    return CreateQuestionRoomChatResponse(roomId: data.dec(_f$roomId));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateQuestionRoomChatResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateQuestionRoomChatResponse>(map);
  }

  static CreateQuestionRoomChatResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateQuestionRoomChatResponse>(json);
  }
}

mixin CreateQuestionRoomChatResponseMappable {
  String toJsonString() {
    return CreateQuestionRoomChatResponseMapper.ensureInitialized()
        .encodeJson<CreateQuestionRoomChatResponse>(
            this as CreateQuestionRoomChatResponse);
  }

  Map<String, dynamic> toJson() {
    return CreateQuestionRoomChatResponseMapper.ensureInitialized()
        .encodeMap<CreateQuestionRoomChatResponse>(
            this as CreateQuestionRoomChatResponse);
  }

  CreateQuestionRoomChatResponseCopyWith<CreateQuestionRoomChatResponse,
          CreateQuestionRoomChatResponse, CreateQuestionRoomChatResponse>
      get copyWith => _CreateQuestionRoomChatResponseCopyWithImpl(
          this as CreateQuestionRoomChatResponse, $identity, $identity);
  @override
  String toString() {
    return CreateQuestionRoomChatResponseMapper.ensureInitialized()
        .stringifyValue(this as CreateQuestionRoomChatResponse);
  }

  @override
  bool operator ==(Object other) {
    return CreateQuestionRoomChatResponseMapper.ensureInitialized()
        .equalsValue(this as CreateQuestionRoomChatResponse, other);
  }

  @override
  int get hashCode {
    return CreateQuestionRoomChatResponseMapper.ensureInitialized()
        .hashValue(this as CreateQuestionRoomChatResponse);
  }
}

extension CreateQuestionRoomChatResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateQuestionRoomChatResponse, $Out> {
  CreateQuestionRoomChatResponseCopyWith<$R, CreateQuestionRoomChatResponse,
          $Out>
      get $asCreateQuestionRoomChatResponse => $base.as(
          (v, t, t2) => _CreateQuestionRoomChatResponseCopyWithImpl(v, t, t2));
}

abstract class CreateQuestionRoomChatResponseCopyWith<
    $R,
    $In extends CreateQuestionRoomChatResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? roomId});
  CreateQuestionRoomChatResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateQuestionRoomChatResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateQuestionRoomChatResponse, $Out>
    implements
        CreateQuestionRoomChatResponseCopyWith<$R,
            CreateQuestionRoomChatResponse, $Out> {
  _CreateQuestionRoomChatResponseCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateQuestionRoomChatResponse> $mapper =
      CreateQuestionRoomChatResponseMapper.ensureInitialized();
  @override
  $R call({Object? roomId = $none}) =>
      $apply(FieldCopyWithData({if (roomId != $none) #roomId: roomId}));
  @override
  CreateQuestionRoomChatResponse $make(CopyWithData data) =>
      CreateQuestionRoomChatResponse(
          roomId: data.get(#roomId, or: $value.roomId));

  @override
  CreateQuestionRoomChatResponseCopyWith<$R2, CreateQuestionRoomChatResponse,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreateQuestionRoomChatResponseCopyWithImpl($value, $cast, t);
}
