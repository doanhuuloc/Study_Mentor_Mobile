// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_roomchat.dart';

class CreateRoomChatMapper extends ClassMapperBase<CreateRoomChat> {
  CreateRoomChatMapper._();

  static CreateRoomChatMapper? _instance;
  static CreateRoomChatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateRoomChatMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateRoomChat';

  static String? _$userId(CreateRoomChat v) => v.userId;
  static const Field<CreateRoomChat, String> _f$userId =
      Field('userId', _$userId, opt: true);
  static String? _$turtorId(CreateRoomChat v) => v.turtorId;
  static const Field<CreateRoomChat, String> _f$turtorId =
      Field('turtorId', _$turtorId, opt: true);
  static String? _$questionId(CreateRoomChat v) => v.questionId;
  static const Field<CreateRoomChat, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);

  @override
  final MappableFields<CreateRoomChat> fields = const {
    #userId: _f$userId,
    #turtorId: _f$turtorId,
    #questionId: _f$questionId,
  };

  static CreateRoomChat _instantiate(DecodingData data) {
    return CreateRoomChat(
        userId: data.dec(_f$userId),
        turtorId: data.dec(_f$turtorId),
        questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateRoomChat fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateRoomChat>(map);
  }

  static CreateRoomChat fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateRoomChat>(json);
  }
}

mixin CreateRoomChatMappable {
  String toJsonString() {
    return CreateRoomChatMapper.ensureInitialized()
        .encodeJson<CreateRoomChat>(this as CreateRoomChat);
  }

  Map<String, dynamic> toJson() {
    return CreateRoomChatMapper.ensureInitialized()
        .encodeMap<CreateRoomChat>(this as CreateRoomChat);
  }

  CreateRoomChatCopyWith<CreateRoomChat, CreateRoomChat, CreateRoomChat>
      get copyWith => _CreateRoomChatCopyWithImpl(
          this as CreateRoomChat, $identity, $identity);
  @override
  String toString() {
    return CreateRoomChatMapper.ensureInitialized()
        .stringifyValue(this as CreateRoomChat);
  }

  @override
  bool operator ==(Object other) {
    return CreateRoomChatMapper.ensureInitialized()
        .equalsValue(this as CreateRoomChat, other);
  }

  @override
  int get hashCode {
    return CreateRoomChatMapper.ensureInitialized()
        .hashValue(this as CreateRoomChat);
  }
}

extension CreateRoomChatValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateRoomChat, $Out> {
  CreateRoomChatCopyWith<$R, CreateRoomChat, $Out> get $asCreateRoomChat =>
      $base.as((v, t, t2) => _CreateRoomChatCopyWithImpl(v, t, t2));
}

abstract class CreateRoomChatCopyWith<$R, $In extends CreateRoomChat, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? userId, String? turtorId, String? questionId});
  CreateRoomChatCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateRoomChatCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateRoomChat, $Out>
    implements CreateRoomChatCopyWith<$R, CreateRoomChat, $Out> {
  _CreateRoomChatCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateRoomChat> $mapper =
      CreateRoomChatMapper.ensureInitialized();
  @override
  $R call(
          {Object? userId = $none,
          Object? turtorId = $none,
          Object? questionId = $none}) =>
      $apply(FieldCopyWithData({
        if (userId != $none) #userId: userId,
        if (turtorId != $none) #turtorId: turtorId,
        if (questionId != $none) #questionId: questionId
      }));
  @override
  CreateRoomChat $make(CopyWithData data) => CreateRoomChat(
      userId: data.get(#userId, or: $value.userId),
      turtorId: data.get(#turtorId, or: $value.turtorId),
      questionId: data.get(#questionId, or: $value.questionId));

  @override
  CreateRoomChatCopyWith<$R2, CreateRoomChat, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreateRoomChatCopyWithImpl($value, $cast, t);
}
