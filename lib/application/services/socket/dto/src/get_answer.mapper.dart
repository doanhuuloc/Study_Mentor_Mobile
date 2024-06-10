// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_answer.dart';

class GetAnswerMapper extends ClassMapperBase<GetAnswer> {
  GetAnswerMapper._();

  static GetAnswerMapper? _instance;
  static GetAnswerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetAnswerMapper._());
      DataGetAnswerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetAnswer';

  static DataGetAnswer? _$data(GetAnswer v) => v.data;
  static const Field<GetAnswer, DataGetAnswer> _f$data =
      Field('data', _$data, opt: true);

  @override
  final MappableFields<GetAnswer> fields = const {
    #data: _f$data,
  };

  static GetAnswer _instantiate(DecodingData data) {
    return GetAnswer(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static GetAnswer fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetAnswer>(map);
  }

  static GetAnswer fromJsonString(String json) {
    return ensureInitialized().decodeJson<GetAnswer>(json);
  }
}

mixin GetAnswerMappable {
  String toJsonString() {
    return GetAnswerMapper.ensureInitialized()
        .encodeJson<GetAnswer>(this as GetAnswer);
  }

  Map<String, dynamic> toJson() {
    return GetAnswerMapper.ensureInitialized()
        .encodeMap<GetAnswer>(this as GetAnswer);
  }

  GetAnswerCopyWith<GetAnswer, GetAnswer, GetAnswer> get copyWith =>
      _GetAnswerCopyWithImpl(this as GetAnswer, $identity, $identity);
  @override
  String toString() {
    return GetAnswerMapper.ensureInitialized()
        .stringifyValue(this as GetAnswer);
  }

  @override
  bool operator ==(Object other) {
    return GetAnswerMapper.ensureInitialized()
        .equalsValue(this as GetAnswer, other);
  }

  @override
  int get hashCode {
    return GetAnswerMapper.ensureInitialized().hashValue(this as GetAnswer);
  }
}

extension GetAnswerValueCopy<$R, $Out> on ObjectCopyWith<$R, GetAnswer, $Out> {
  GetAnswerCopyWith<$R, GetAnswer, $Out> get $asGetAnswer =>
      $base.as((v, t, t2) => _GetAnswerCopyWithImpl(v, t, t2));
}

abstract class GetAnswerCopyWith<$R, $In extends GetAnswer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  DataGetAnswerCopyWith<$R, DataGetAnswer, DataGetAnswer>? get data;
  $R call({DataGetAnswer? data});
  GetAnswerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GetAnswerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetAnswer, $Out>
    implements GetAnswerCopyWith<$R, GetAnswer, $Out> {
  _GetAnswerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetAnswer> $mapper =
      GetAnswerMapper.ensureInitialized();
  @override
  DataGetAnswerCopyWith<$R, DataGetAnswer, DataGetAnswer>? get data =>
      $value.data?.copyWith.$chain((v) => call(data: v));
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  GetAnswer $make(CopyWithData data) =>
      GetAnswer(data: data.get(#data, or: $value.data));

  @override
  GetAnswerCopyWith<$R2, GetAnswer, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetAnswerCopyWithImpl($value, $cast, t);
}

class DataGetAnswerMapper extends ClassMapperBase<DataGetAnswer> {
  DataGetAnswerMapper._();

  static DataGetAnswerMapper? _instance;
  static DataGetAnswerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DataGetAnswerMapper._());
      AnswerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DataGetAnswer';

  static Answer? _$answer(DataGetAnswer v) => v.answer;
  static const Field<DataGetAnswer, Answer> _f$answer =
      Field('answer', _$answer, opt: true);

  @override
  final MappableFields<DataGetAnswer> fields = const {
    #answer: _f$answer,
  };

  static DataGetAnswer _instantiate(DecodingData data) {
    return DataGetAnswer(answer: data.dec(_f$answer));
  }

  @override
  final Function instantiate = _instantiate;

  static DataGetAnswer fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DataGetAnswer>(map);
  }

  static DataGetAnswer fromJsonString(String json) {
    return ensureInitialized().decodeJson<DataGetAnswer>(json);
  }
}

mixin DataGetAnswerMappable {
  String toJsonString() {
    return DataGetAnswerMapper.ensureInitialized()
        .encodeJson<DataGetAnswer>(this as DataGetAnswer);
  }

  Map<String, dynamic> toJson() {
    return DataGetAnswerMapper.ensureInitialized()
        .encodeMap<DataGetAnswer>(this as DataGetAnswer);
  }

  DataGetAnswerCopyWith<DataGetAnswer, DataGetAnswer, DataGetAnswer>
      get copyWith => _DataGetAnswerCopyWithImpl(
          this as DataGetAnswer, $identity, $identity);
  @override
  String toString() {
    return DataGetAnswerMapper.ensureInitialized()
        .stringifyValue(this as DataGetAnswer);
  }

  @override
  bool operator ==(Object other) {
    return DataGetAnswerMapper.ensureInitialized()
        .equalsValue(this as DataGetAnswer, other);
  }

  @override
  int get hashCode {
    return DataGetAnswerMapper.ensureInitialized()
        .hashValue(this as DataGetAnswer);
  }
}

extension DataGetAnswerValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DataGetAnswer, $Out> {
  DataGetAnswerCopyWith<$R, DataGetAnswer, $Out> get $asDataGetAnswer =>
      $base.as((v, t, t2) => _DataGetAnswerCopyWithImpl(v, t, t2));
}

abstract class DataGetAnswerCopyWith<$R, $In extends DataGetAnswer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AnswerCopyWith<$R, Answer, Answer>? get answer;
  $R call({Answer? answer});
  DataGetAnswerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DataGetAnswerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DataGetAnswer, $Out>
    implements DataGetAnswerCopyWith<$R, DataGetAnswer, $Out> {
  _DataGetAnswerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DataGetAnswer> $mapper =
      DataGetAnswerMapper.ensureInitialized();
  @override
  AnswerCopyWith<$R, Answer, Answer>? get answer =>
      $value.answer?.copyWith.$chain((v) => call(answer: v));
  @override
  $R call({Object? answer = $none}) =>
      $apply(FieldCopyWithData({if (answer != $none) #answer: answer}));
  @override
  DataGetAnswer $make(CopyWithData data) =>
      DataGetAnswer(answer: data.get(#answer, or: $value.answer));

  @override
  DataGetAnswerCopyWith<$R2, DataGetAnswer, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DataGetAnswerCopyWithImpl($value, $cast, t);
}

class AnswerMapper extends ClassMapperBase<Answer> {
  AnswerMapper._();

  static AnswerMapper? _instance;
  static AnswerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AnswerMapper._());
      FileResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Answer';

  static String? _$id(Answer v) => v.id;
  static const Field<Answer, String> _f$id = Field('id', _$id, opt: true);
  static DateTime? _$createdAt(Answer v) => v.createdAt;
  static const Field<Answer, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);
  static DateTime? _$updatedAt(Answer v) => v.updatedAt;
  static const Field<Answer, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, opt: true);
  static String? _$content(Answer v) => v.content;
  static const Field<Answer, String> _f$content =
      Field('content', _$content, opt: true);
  static List<FileResponse>? _$fileAttachmentAnswers(Answer v) =>
      v.fileAttachmentAnswers;
  static const Field<Answer, List<FileResponse>> _f$fileAttachmentAnswers =
      Field('fileAttachmentAnswers', _$fileAttachmentAnswers, opt: true);

  @override
  final MappableFields<Answer> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #content: _f$content,
    #fileAttachmentAnswers: _f$fileAttachmentAnswers,
  };

  static Answer _instantiate(DecodingData data) {
    return Answer(
        id: data.dec(_f$id),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        content: data.dec(_f$content),
        fileAttachmentAnswers: data.dec(_f$fileAttachmentAnswers));
  }

  @override
  final Function instantiate = _instantiate;

  static Answer fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Answer>(map);
  }

  static Answer fromJsonString(String json) {
    return ensureInitialized().decodeJson<Answer>(json);
  }
}

mixin AnswerMappable {
  String toJsonString() {
    return AnswerMapper.ensureInitialized().encodeJson<Answer>(this as Answer);
  }

  Map<String, dynamic> toJson() {
    return AnswerMapper.ensureInitialized().encodeMap<Answer>(this as Answer);
  }

  AnswerCopyWith<Answer, Answer, Answer> get copyWith =>
      _AnswerCopyWithImpl(this as Answer, $identity, $identity);
  @override
  String toString() {
    return AnswerMapper.ensureInitialized().stringifyValue(this as Answer);
  }

  @override
  bool operator ==(Object other) {
    return AnswerMapper.ensureInitialized().equalsValue(this as Answer, other);
  }

  @override
  int get hashCode {
    return AnswerMapper.ensureInitialized().hashValue(this as Answer);
  }
}

extension AnswerValueCopy<$R, $Out> on ObjectCopyWith<$R, Answer, $Out> {
  AnswerCopyWith<$R, Answer, $Out> get $asAnswer =>
      $base.as((v, t, t2) => _AnswerCopyWithImpl(v, t, t2));
}

abstract class AnswerCopyWith<$R, $In extends Answer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileResponse,
          FileResponseCopyWith<$R, FileResponse, FileResponse>>?
      get fileAttachmentAnswers;
  $R call(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? content,
      List<FileResponse>? fileAttachmentAnswers});
  AnswerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AnswerCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Answer, $Out>
    implements AnswerCopyWith<$R, Answer, $Out> {
  _AnswerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Answer> $mapper = AnswerMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FileResponse,
          FileResponseCopyWith<$R, FileResponse, FileResponse>>?
      get fileAttachmentAnswers => $value.fileAttachmentAnswers != null
          ? ListCopyWith(
              $value.fileAttachmentAnswers!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(fileAttachmentAnswers: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? createdAt = $none,
          Object? updatedAt = $none,
          Object? content = $none,
          Object? fileAttachmentAnswers = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (createdAt != $none) #createdAt: createdAt,
        if (updatedAt != $none) #updatedAt: updatedAt,
        if (content != $none) #content: content,
        if (fileAttachmentAnswers != $none)
          #fileAttachmentAnswers: fileAttachmentAnswers
      }));
  @override
  Answer $make(CopyWithData data) => Answer(
      id: data.get(#id, or: $value.id),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      content: data.get(#content, or: $value.content),
      fileAttachmentAnswers:
          data.get(#fileAttachmentAnswers, or: $value.fileAttachmentAnswers));

  @override
  AnswerCopyWith<$R2, Answer, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AnswerCopyWithImpl($value, $cast, t);
}
