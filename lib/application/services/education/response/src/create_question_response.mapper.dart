// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'create_question_response.dart';

class CreateQuestionResponseMapper
    extends ClassMapperBase<CreateQuestionResponse> {
  CreateQuestionResponseMapper._();

  static CreateQuestionResponseMapper? _instance;
  static CreateQuestionResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateQuestionResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateQuestionResponse';

  static double? _$price(CreateQuestionResponse v) => v.price;
  static const Field<CreateQuestionResponse, double> _f$price =
      Field('price', _$price, opt: true);
  static String? _$questionId(CreateQuestionResponse v) => v.questionId;
  static const Field<CreateQuestionResponse, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);

  @override
  final MappableFields<CreateQuestionResponse> fields = const {
    #price: _f$price,
    #questionId: _f$questionId,
  };

  static CreateQuestionResponse _instantiate(DecodingData data) {
    return CreateQuestionResponse(
        price: data.dec(_f$price), questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateQuestionResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateQuestionResponse>(map);
  }

  static CreateQuestionResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<CreateQuestionResponse>(json);
  }
}

mixin CreateQuestionResponseMappable {
  String toJsonString() {
    return CreateQuestionResponseMapper.ensureInitialized()
        .encodeJson<CreateQuestionResponse>(this as CreateQuestionResponse);
  }

  Map<String, dynamic> toJson() {
    return CreateQuestionResponseMapper.ensureInitialized()
        .encodeMap<CreateQuestionResponse>(this as CreateQuestionResponse);
  }

  CreateQuestionResponseCopyWith<CreateQuestionResponse, CreateQuestionResponse,
          CreateQuestionResponse>
      get copyWith => _CreateQuestionResponseCopyWithImpl(
          this as CreateQuestionResponse, $identity, $identity);
  @override
  String toString() {
    return CreateQuestionResponseMapper.ensureInitialized()
        .stringifyValue(this as CreateQuestionResponse);
  }

  @override
  bool operator ==(Object other) {
    return CreateQuestionResponseMapper.ensureInitialized()
        .equalsValue(this as CreateQuestionResponse, other);
  }

  @override
  int get hashCode {
    return CreateQuestionResponseMapper.ensureInitialized()
        .hashValue(this as CreateQuestionResponse);
  }
}

extension CreateQuestionResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateQuestionResponse, $Out> {
  CreateQuestionResponseCopyWith<$R, CreateQuestionResponse, $Out>
      get $asCreateQuestionResponse =>
          $base.as((v, t, t2) => _CreateQuestionResponseCopyWithImpl(v, t, t2));
}

abstract class CreateQuestionResponseCopyWith<
    $R,
    $In extends CreateQuestionResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? price, String? questionId});
  CreateQuestionResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateQuestionResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateQuestionResponse, $Out>
    implements
        CreateQuestionResponseCopyWith<$R, CreateQuestionResponse, $Out> {
  _CreateQuestionResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateQuestionResponse> $mapper =
      CreateQuestionResponseMapper.ensureInitialized();
  @override
  $R call({Object? price = $none, Object? questionId = $none}) =>
      $apply(FieldCopyWithData({
        if (price != $none) #price: price,
        if (questionId != $none) #questionId: questionId
      }));
  @override
  CreateQuestionResponse $make(CopyWithData data) => CreateQuestionResponse(
      price: data.get(#price, or: $value.price),
      questionId: data.get(#questionId, or: $value.questionId));

  @override
  CreateQuestionResponseCopyWith<$R2, CreateQuestionResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateQuestionResponseCopyWithImpl($value, $cast, t);
}
