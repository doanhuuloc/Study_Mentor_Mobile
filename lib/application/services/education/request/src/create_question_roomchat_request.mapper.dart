// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_question_roomchat_request.dart';

class CreateQuestionRoomChatRequestMapper
    extends ClassMapperBase<CreateQuestionRoomChatRequest> {
  CreateQuestionRoomChatRequestMapper._();

  static CreateQuestionRoomChatRequestMapper? _instance;
  static CreateQuestionRoomChatRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = CreateQuestionRoomChatRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateQuestionRoomChatRequest';

  static String _$userId(CreateQuestionRoomChatRequest v) => v.userId;
  static const Field<CreateQuestionRoomChatRequest, String> _f$userId =
      Field('userId', _$userId);
  static String _$tutorId(CreateQuestionRoomChatRequest v) => v.tutorId;
  static const Field<CreateQuestionRoomChatRequest, String> _f$tutorId =
      Field('tutorId', _$tutorId);
  static String _$questionId(CreateQuestionRoomChatRequest v) => v.questionId;
  static const Field<CreateQuestionRoomChatRequest, String> _f$questionId =
      Field('questionId', _$questionId);

  @override
  final MappableFields<CreateQuestionRoomChatRequest> fields = const {
    #userId: _f$userId,
    #tutorId: _f$tutorId,
    #questionId: _f$questionId,
  };

  static CreateQuestionRoomChatRequest _instantiate(DecodingData data) {
    return CreateQuestionRoomChatRequest(
        userId: data.dec(_f$userId),
        tutorId: data.dec(_f$tutorId),
        questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateQuestionRoomChatRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateQuestionRoomChatRequest>(map);
  }

  static CreateQuestionRoomChatRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateQuestionRoomChatRequest>(json);
  }
}

mixin CreateQuestionRoomChatRequestMappable {
  String toJsonString() {
    return CreateQuestionRoomChatRequestMapper.ensureInitialized()
        .encodeJson<CreateQuestionRoomChatRequest>(
            this as CreateQuestionRoomChatRequest);
  }

  Map<String, dynamic> toJson() {
    return CreateQuestionRoomChatRequestMapper.ensureInitialized()
        .encodeMap<CreateQuestionRoomChatRequest>(
            this as CreateQuestionRoomChatRequest);
  }

  CreateQuestionRoomChatRequestCopyWith<CreateQuestionRoomChatRequest,
          CreateQuestionRoomChatRequest, CreateQuestionRoomChatRequest>
      get copyWith => _CreateQuestionRoomChatRequestCopyWithImpl(
          this as CreateQuestionRoomChatRequest, $identity, $identity);
  @override
  String toString() {
    return CreateQuestionRoomChatRequestMapper.ensureInitialized()
        .stringifyValue(this as CreateQuestionRoomChatRequest);
  }

  @override
  bool operator ==(Object other) {
    return CreateQuestionRoomChatRequestMapper.ensureInitialized()
        .equalsValue(this as CreateQuestionRoomChatRequest, other);
  }

  @override
  int get hashCode {
    return CreateQuestionRoomChatRequestMapper.ensureInitialized()
        .hashValue(this as CreateQuestionRoomChatRequest);
  }
}

extension CreateQuestionRoomChatRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateQuestionRoomChatRequest, $Out> {
  CreateQuestionRoomChatRequestCopyWith<$R, CreateQuestionRoomChatRequest, $Out>
      get $asCreateQuestionRoomChatRequest => $base.as(
          (v, t, t2) => _CreateQuestionRoomChatRequestCopyWithImpl(v, t, t2));
}

abstract class CreateQuestionRoomChatRequestCopyWith<
    $R,
    $In extends CreateQuestionRoomChatRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? userId, String? tutorId, String? questionId});
  CreateQuestionRoomChatRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateQuestionRoomChatRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateQuestionRoomChatRequest, $Out>
    implements
        CreateQuestionRoomChatRequestCopyWith<$R, CreateQuestionRoomChatRequest,
            $Out> {
  _CreateQuestionRoomChatRequestCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateQuestionRoomChatRequest> $mapper =
      CreateQuestionRoomChatRequestMapper.ensureInitialized();
  @override
  $R call({String? userId, String? tutorId, String? questionId}) =>
      $apply(FieldCopyWithData({
        if (userId != null) #userId: userId,
        if (tutorId != null) #tutorId: tutorId,
        if (questionId != null) #questionId: questionId
      }));
  @override
  CreateQuestionRoomChatRequest $make(CopyWithData data) =>
      CreateQuestionRoomChatRequest(
          userId: data.get(#userId, or: $value.userId),
          tutorId: data.get(#tutorId, or: $value.tutorId),
          questionId: data.get(#questionId, or: $value.questionId));

  @override
  CreateQuestionRoomChatRequestCopyWith<$R2, CreateQuestionRoomChatRequest,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreateQuestionRoomChatRequestCopyWithImpl($value, $cast, t);
}
