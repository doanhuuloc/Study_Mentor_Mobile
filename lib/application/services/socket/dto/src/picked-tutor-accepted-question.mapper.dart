// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'picked-tutor-accepted-question.dart';

class PickedTutorAcceptedQuestionMapper
    extends ClassMapperBase<PickedTutorAcceptedQuestion> {
  PickedTutorAcceptedQuestionMapper._();

  static PickedTutorAcceptedQuestionMapper? _instance;
  static PickedTutorAcceptedQuestionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PickedTutorAcceptedQuestionMapper._());
      DataPickedTutorAcceptedQuestionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PickedTutorAcceptedQuestion';

  static DataPickedTutorAcceptedQuestion? _$data(
          PickedTutorAcceptedQuestion v) =>
      v.data;
  static const Field<PickedTutorAcceptedQuestion,
          DataPickedTutorAcceptedQuestion> _f$data =
      Field('data', _$data, opt: true);

  @override
  final MappableFields<PickedTutorAcceptedQuestion> fields = const {
    #data: _f$data,
  };

  static PickedTutorAcceptedQuestion _instantiate(DecodingData data) {
    return PickedTutorAcceptedQuestion(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static PickedTutorAcceptedQuestion fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PickedTutorAcceptedQuestion>(map);
  }

  static PickedTutorAcceptedQuestion fromJsonString(String json) {
    return ensureInitialized().decodeJson<PickedTutorAcceptedQuestion>(json);
  }
}

mixin PickedTutorAcceptedQuestionMappable {
  String toJsonString() {
    return PickedTutorAcceptedQuestionMapper.ensureInitialized()
        .encodeJson<PickedTutorAcceptedQuestion>(
            this as PickedTutorAcceptedQuestion);
  }

  Map<String, dynamic> toJson() {
    return PickedTutorAcceptedQuestionMapper.ensureInitialized()
        .encodeMap<PickedTutorAcceptedQuestion>(
            this as PickedTutorAcceptedQuestion);
  }

  PickedTutorAcceptedQuestionCopyWith<PickedTutorAcceptedQuestion,
          PickedTutorAcceptedQuestion, PickedTutorAcceptedQuestion>
      get copyWith => _PickedTutorAcceptedQuestionCopyWithImpl(
          this as PickedTutorAcceptedQuestion, $identity, $identity);
  @override
  String toString() {
    return PickedTutorAcceptedQuestionMapper.ensureInitialized()
        .stringifyValue(this as PickedTutorAcceptedQuestion);
  }

  @override
  bool operator ==(Object other) {
    return PickedTutorAcceptedQuestionMapper.ensureInitialized()
        .equalsValue(this as PickedTutorAcceptedQuestion, other);
  }

  @override
  int get hashCode {
    return PickedTutorAcceptedQuestionMapper.ensureInitialized()
        .hashValue(this as PickedTutorAcceptedQuestion);
  }
}

extension PickedTutorAcceptedQuestionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PickedTutorAcceptedQuestion, $Out> {
  PickedTutorAcceptedQuestionCopyWith<$R, PickedTutorAcceptedQuestion, $Out>
      get $asPickedTutorAcceptedQuestion => $base
          .as((v, t, t2) => _PickedTutorAcceptedQuestionCopyWithImpl(v, t, t2));
}

abstract class PickedTutorAcceptedQuestionCopyWith<
    $R,
    $In extends PickedTutorAcceptedQuestion,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  DataPickedTutorAcceptedQuestionCopyWith<$R, DataPickedTutorAcceptedQuestion,
      DataPickedTutorAcceptedQuestion>? get data;
  $R call({DataPickedTutorAcceptedQuestion? data});
  PickedTutorAcceptedQuestionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PickedTutorAcceptedQuestionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PickedTutorAcceptedQuestion, $Out>
    implements
        PickedTutorAcceptedQuestionCopyWith<$R, PickedTutorAcceptedQuestion,
            $Out> {
  _PickedTutorAcceptedQuestionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PickedTutorAcceptedQuestion> $mapper =
      PickedTutorAcceptedQuestionMapper.ensureInitialized();
  @override
  DataPickedTutorAcceptedQuestionCopyWith<$R, DataPickedTutorAcceptedQuestion,
          DataPickedTutorAcceptedQuestion>?
      get data => $value.data?.copyWith.$chain((v) => call(data: v));
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  PickedTutorAcceptedQuestion $make(CopyWithData data) =>
      PickedTutorAcceptedQuestion(data: data.get(#data, or: $value.data));

  @override
  PickedTutorAcceptedQuestionCopyWith<$R2, PickedTutorAcceptedQuestion, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PickedTutorAcceptedQuestionCopyWithImpl($value, $cast, t);
}

class DataPickedTutorAcceptedQuestionMapper
    extends ClassMapperBase<DataPickedTutorAcceptedQuestion> {
  DataPickedTutorAcceptedQuestionMapper._();

  static DataPickedTutorAcceptedQuestionMapper? _instance;
  static DataPickedTutorAcceptedQuestionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = DataPickedTutorAcceptedQuestionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DataPickedTutorAcceptedQuestion';

  static int? _$isAccepted(DataPickedTutorAcceptedQuestion v) => v.isAccepted;
  static const Field<DataPickedTutorAcceptedQuestion, int> _f$isAccepted =
      Field('isAccepted', _$isAccepted, opt: true);

  @override
  final MappableFields<DataPickedTutorAcceptedQuestion> fields = const {
    #isAccepted: _f$isAccepted,
  };

  static DataPickedTutorAcceptedQuestion _instantiate(DecodingData data) {
    return DataPickedTutorAcceptedQuestion(isAccepted: data.dec(_f$isAccepted));
  }

  @override
  final Function instantiate = _instantiate;

  static DataPickedTutorAcceptedQuestion fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DataPickedTutorAcceptedQuestion>(map);
  }

  static DataPickedTutorAcceptedQuestion fromJsonString(String json) {
    return ensureInitialized()
        .decodeJson<DataPickedTutorAcceptedQuestion>(json);
  }
}

mixin DataPickedTutorAcceptedQuestionMappable {
  String toJsonString() {
    return DataPickedTutorAcceptedQuestionMapper.ensureInitialized()
        .encodeJson<DataPickedTutorAcceptedQuestion>(
            this as DataPickedTutorAcceptedQuestion);
  }

  Map<String, dynamic> toJson() {
    return DataPickedTutorAcceptedQuestionMapper.ensureInitialized()
        .encodeMap<DataPickedTutorAcceptedQuestion>(
            this as DataPickedTutorAcceptedQuestion);
  }

  DataPickedTutorAcceptedQuestionCopyWith<DataPickedTutorAcceptedQuestion,
          DataPickedTutorAcceptedQuestion, DataPickedTutorAcceptedQuestion>
      get copyWith => _DataPickedTutorAcceptedQuestionCopyWithImpl(
          this as DataPickedTutorAcceptedQuestion, $identity, $identity);
  @override
  String toString() {
    return DataPickedTutorAcceptedQuestionMapper.ensureInitialized()
        .stringifyValue(this as DataPickedTutorAcceptedQuestion);
  }

  @override
  bool operator ==(Object other) {
    return DataPickedTutorAcceptedQuestionMapper.ensureInitialized()
        .equalsValue(this as DataPickedTutorAcceptedQuestion, other);
  }

  @override
  int get hashCode {
    return DataPickedTutorAcceptedQuestionMapper.ensureInitialized()
        .hashValue(this as DataPickedTutorAcceptedQuestion);
  }
}

extension DataPickedTutorAcceptedQuestionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DataPickedTutorAcceptedQuestion, $Out> {
  DataPickedTutorAcceptedQuestionCopyWith<$R, DataPickedTutorAcceptedQuestion,
          $Out>
      get $asDataPickedTutorAcceptedQuestion => $base.as(
          (v, t, t2) => _DataPickedTutorAcceptedQuestionCopyWithImpl(v, t, t2));
}

abstract class DataPickedTutorAcceptedQuestionCopyWith<
    $R,
    $In extends DataPickedTutorAcceptedQuestion,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? isAccepted});
  DataPickedTutorAcceptedQuestionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DataPickedTutorAcceptedQuestionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DataPickedTutorAcceptedQuestion, $Out>
    implements
        DataPickedTutorAcceptedQuestionCopyWith<$R,
            DataPickedTutorAcceptedQuestion, $Out> {
  _DataPickedTutorAcceptedQuestionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DataPickedTutorAcceptedQuestion> $mapper =
      DataPickedTutorAcceptedQuestionMapper.ensureInitialized();
  @override
  $R call({Object? isAccepted = $none}) => $apply(
      FieldCopyWithData({if (isAccepted != $none) #isAccepted: isAccepted}));
  @override
  DataPickedTutorAcceptedQuestion $make(CopyWithData data) =>
      DataPickedTutorAcceptedQuestion(
          isAccepted: data.get(#isAccepted, or: $value.isAccepted));

  @override
  DataPickedTutorAcceptedQuestionCopyWith<$R2, DataPickedTutorAcceptedQuestion,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DataPickedTutorAcceptedQuestionCopyWithImpl($value, $cast, t);
}
