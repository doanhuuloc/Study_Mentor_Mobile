// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'on_get_tutor.dart';

class OnGetTutorMapper extends ClassMapperBase<OnGetTutor> {
  OnGetTutorMapper._();

  static OnGetTutorMapper? _instance;
  static OnGetTutorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OnGetTutorMapper._());
      TutorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OnGetTutor';

  static List<Tutor>? _$data(OnGetTutor v) => v.data;
  static const Field<OnGetTutor, List<Tutor>> _f$data =
      Field('data', _$data, opt: true);
  static int? _$pageSize(OnGetTutor v) => v.pageSize;
  static const Field<OnGetTutor, int> _f$pageSize =
      Field('pageSize', _$pageSize, opt: true);
  static int? _$total(OnGetTutor v) => v.total;
  static const Field<OnGetTutor, int> _f$total =
      Field('total', _$total, opt: true);
  static int? _$previousPage(OnGetTutor v) => v.previousPage;
  static const Field<OnGetTutor, int> _f$previousPage =
      Field('previousPage', _$previousPage, opt: true);
  static int? _$nextPage(OnGetTutor v) => v.nextPage;
  static const Field<OnGetTutor, int> _f$nextPage =
      Field('nextPage', _$nextPage, opt: true);
  static int? _$totalPages(OnGetTutor v) => v.totalPages;
  static const Field<OnGetTutor, int> _f$totalPages =
      Field('totalPages', _$totalPages, opt: true);

  @override
  final MappableFields<OnGetTutor> fields = const {
    #data: _f$data,
    #pageSize: _f$pageSize,
    #total: _f$total,
    #previousPage: _f$previousPage,
    #nextPage: _f$nextPage,
    #totalPages: _f$totalPages,
  };

  static OnGetTutor _instantiate(DecodingData data) {
    return OnGetTutor(
        data: data.dec(_f$data),
        pageSize: data.dec(_f$pageSize),
        total: data.dec(_f$total),
        previousPage: data.dec(_f$previousPage),
        nextPage: data.dec(_f$nextPage),
        totalPages: data.dec(_f$totalPages));
  }

  @override
  final Function instantiate = _instantiate;

  static OnGetTutor fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OnGetTutor>(map);
  }

  static OnGetTutor fromJsonString(String json) {
    return ensureInitialized().decodeJson<OnGetTutor>(json);
  }
}

mixin OnGetTutorMappable {
  String toJsonString() {
    return OnGetTutorMapper.ensureInitialized()
        .encodeJson<OnGetTutor>(this as OnGetTutor);
  }

  Map<String, dynamic> toJson() {
    return OnGetTutorMapper.ensureInitialized()
        .encodeMap<OnGetTutor>(this as OnGetTutor);
  }

  OnGetTutorCopyWith<OnGetTutor, OnGetTutor, OnGetTutor> get copyWith =>
      _OnGetTutorCopyWithImpl(this as OnGetTutor, $identity, $identity);
  @override
  String toString() {
    return OnGetTutorMapper.ensureInitialized()
        .stringifyValue(this as OnGetTutor);
  }

  @override
  bool operator ==(Object other) {
    return OnGetTutorMapper.ensureInitialized()
        .equalsValue(this as OnGetTutor, other);
  }

  @override
  int get hashCode {
    return OnGetTutorMapper.ensureInitialized().hashValue(this as OnGetTutor);
  }
}

extension OnGetTutorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OnGetTutor, $Out> {
  OnGetTutorCopyWith<$R, OnGetTutor, $Out> get $asOnGetTutor =>
      $base.as((v, t, t2) => _OnGetTutorCopyWithImpl(v, t, t2));
}

abstract class OnGetTutorCopyWith<$R, $In extends OnGetTutor, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Tutor, TutorCopyWith<$R, Tutor, Tutor>>? get data;
  $R call(
      {List<Tutor>? data,
      int? pageSize,
      int? total,
      int? previousPage,
      int? nextPage,
      int? totalPages});
  OnGetTutorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OnGetTutorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OnGetTutor, $Out>
    implements OnGetTutorCopyWith<$R, OnGetTutor, $Out> {
  _OnGetTutorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OnGetTutor> $mapper =
      OnGetTutorMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Tutor, TutorCopyWith<$R, Tutor, Tutor>>? get data =>
      $value.data != null
          ? ListCopyWith($value.data!, (v, t) => v.copyWith.$chain(t),
              (v) => call(data: v))
          : null;
  @override
  $R call(
          {Object? data = $none,
          Object? pageSize = $none,
          Object? total = $none,
          Object? previousPage = $none,
          Object? nextPage = $none,
          Object? totalPages = $none}) =>
      $apply(FieldCopyWithData({
        if (data != $none) #data: data,
        if (pageSize != $none) #pageSize: pageSize,
        if (total != $none) #total: total,
        if (previousPage != $none) #previousPage: previousPage,
        if (nextPage != $none) #nextPage: nextPage,
        if (totalPages != $none) #totalPages: totalPages
      }));
  @override
  OnGetTutor $make(CopyWithData data) => OnGetTutor(
      data: data.get(#data, or: $value.data),
      pageSize: data.get(#pageSize, or: $value.pageSize),
      total: data.get(#total, or: $value.total),
      previousPage: data.get(#previousPage, or: $value.previousPage),
      nextPage: data.get(#nextPage, or: $value.nextPage),
      totalPages: data.get(#totalPages, or: $value.totalPages));

  @override
  OnGetTutorCopyWith<$R2, OnGetTutor, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OnGetTutorCopyWithImpl($value, $cast, t);
}

class TutorMapper extends ClassMapperBase<Tutor> {
  TutorMapper._();

  static TutorMapper? _instance;
  static TutorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TutorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Tutor';

  static String? _$id(Tutor v) => v.id;
  static const Field<Tutor, String> _f$id = Field('id', _$id, opt: true);
  static String? _$fullName(Tutor v) => v.fullName;
  static const Field<Tutor, String> _f$fullName =
      Field('fullName', _$fullName, opt: true);
  static int? _$age(Tutor v) => v.age;
  static const Field<Tutor, int> _f$age = Field('age', _$age, opt: true);
  static String? _$avatar(Tutor v) => v.avatar;
  static const Field<Tutor, String> _f$avatar =
      Field('avatar', _$avatar, opt: true);
  static int? _$averageRate(Tutor v) => v.averageRate;
  static const Field<Tutor, int> _f$averageRate =
      Field('averageRate', _$averageRate, opt: true);

  @override
  final MappableFields<Tutor> fields = const {
    #id: _f$id,
    #fullName: _f$fullName,
    #age: _f$age,
    #avatar: _f$avatar,
    #averageRate: _f$averageRate,
  };

  static Tutor _instantiate(DecodingData data) {
    return Tutor(
        id: data.dec(_f$id),
        fullName: data.dec(_f$fullName),
        age: data.dec(_f$age),
        avatar: data.dec(_f$avatar),
        averageRate: data.dec(_f$averageRate));
  }

  @override
  final Function instantiate = _instantiate;

  static Tutor fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Tutor>(map);
  }

  static Tutor fromJsonString(String json) {
    return ensureInitialized().decodeJson<Tutor>(json);
  }
}

mixin TutorMappable {
  String toJsonString() {
    return TutorMapper.ensureInitialized().encodeJson<Tutor>(this as Tutor);
  }

  Map<String, dynamic> toJson() {
    return TutorMapper.ensureInitialized().encodeMap<Tutor>(this as Tutor);
  }

  TutorCopyWith<Tutor, Tutor, Tutor> get copyWith =>
      _TutorCopyWithImpl(this as Tutor, $identity, $identity);
  @override
  String toString() {
    return TutorMapper.ensureInitialized().stringifyValue(this as Tutor);
  }

  @override
  bool operator ==(Object other) {
    return TutorMapper.ensureInitialized().equalsValue(this as Tutor, other);
  }

  @override
  int get hashCode {
    return TutorMapper.ensureInitialized().hashValue(this as Tutor);
  }
}

extension TutorValueCopy<$R, $Out> on ObjectCopyWith<$R, Tutor, $Out> {
  TutorCopyWith<$R, Tutor, $Out> get $asTutor =>
      $base.as((v, t, t2) => _TutorCopyWithImpl(v, t, t2));
}

abstract class TutorCopyWith<$R, $In extends Tutor, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? fullName,
      int? age,
      String? avatar,
      int? averageRate});
  TutorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TutorCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Tutor, $Out>
    implements TutorCopyWith<$R, Tutor, $Out> {
  _TutorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Tutor> $mapper = TutorMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? fullName = $none,
          Object? age = $none,
          Object? avatar = $none,
          Object? averageRate = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (fullName != $none) #fullName: fullName,
        if (age != $none) #age: age,
        if (avatar != $none) #avatar: avatar,
        if (averageRate != $none) #averageRate: averageRate
      }));
  @override
  Tutor $make(CopyWithData data) => Tutor(
      id: data.get(#id, or: $value.id),
      fullName: data.get(#fullName, or: $value.fullName),
      age: data.get(#age, or: $value.age),
      avatar: data.get(#avatar, or: $value.avatar),
      averageRate: data.get(#averageRate, or: $value.averageRate));

  @override
  TutorCopyWith<$R2, Tutor, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TutorCopyWithImpl($value, $cast, t);
}
