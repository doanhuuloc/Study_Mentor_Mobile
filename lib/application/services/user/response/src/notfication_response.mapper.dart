// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'notfication_response.dart';

class MyNotificationResponseMapper
    extends ClassMapperBase<MyNotificationResponse> {
  MyNotificationResponseMapper._();

  static MyNotificationResponseMapper? _instance;
  static MyNotificationResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MyNotificationResponseMapper._());
      UserNotificationMapper.ensureInitialized();
      QuestionNotficationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MyNotificationResponse';

  static String? _$id(MyNotificationResponse v) => v.id;
  static const Field<MyNotificationResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$type(MyNotificationResponse v) => v.type;
  static const Field<MyNotificationResponse, String> _f$type =
      Field('type', _$type, opt: true);
  static UserNotification? _$tutor(MyNotificationResponse v) => v.tutor;
  static const Field<MyNotificationResponse, UserNotification> _f$tutor =
      Field('tutor', _$tutor, opt: true);
  static UserNotification? _$student(MyNotificationResponse v) => v.student;
  static const Field<MyNotificationResponse, UserNotification> _f$student =
      Field('student', _$student, opt: true);
  static QuestionNotfication? _$question(MyNotificationResponse v) =>
      v.question;
  static const Field<MyNotificationResponse, QuestionNotfication> _f$question =
      Field('question', _$question, opt: true);
  static int? _$role(MyNotificationResponse v) => v.role;
  static const Field<MyNotificationResponse, int> _f$role =
      Field('role', _$role, opt: true);
  static DateTime? _$createdAt(MyNotificationResponse v) => v.createdAt;
  static const Field<MyNotificationResponse, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);

  @override
  final MappableFields<MyNotificationResponse> fields = const {
    #id: _f$id,
    #type: _f$type,
    #tutor: _f$tutor,
    #student: _f$student,
    #question: _f$question,
    #role: _f$role,
    #createdAt: _f$createdAt,
  };

  static MyNotificationResponse _instantiate(DecodingData data) {
    return MyNotificationResponse(
        id: data.dec(_f$id),
        type: data.dec(_f$type),
        tutor: data.dec(_f$tutor),
        student: data.dec(_f$student),
        question: data.dec(_f$question),
        role: data.dec(_f$role),
        createdAt: data.dec(_f$createdAt));
  }

  @override
  final Function instantiate = _instantiate;

  static MyNotificationResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MyNotificationResponse>(map);
  }

  static MyNotificationResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<MyNotificationResponse>(json);
  }
}

mixin MyNotificationResponseMappable {
  String toJsonString() {
    return MyNotificationResponseMapper.ensureInitialized()
        .encodeJson<MyNotificationResponse>(this as MyNotificationResponse);
  }

  Map<String, dynamic> toJson() {
    return MyNotificationResponseMapper.ensureInitialized()
        .encodeMap<MyNotificationResponse>(this as MyNotificationResponse);
  }

  MyNotificationResponseCopyWith<MyNotificationResponse, MyNotificationResponse,
          MyNotificationResponse>
      get copyWith => _MyNotificationResponseCopyWithImpl(
          this as MyNotificationResponse, $identity, $identity);
  @override
  String toString() {
    return MyNotificationResponseMapper.ensureInitialized()
        .stringifyValue(this as MyNotificationResponse);
  }

  @override
  bool operator ==(Object other) {
    return MyNotificationResponseMapper.ensureInitialized()
        .equalsValue(this as MyNotificationResponse, other);
  }

  @override
  int get hashCode {
    return MyNotificationResponseMapper.ensureInitialized()
        .hashValue(this as MyNotificationResponse);
  }
}

extension MyNotificationResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MyNotificationResponse, $Out> {
  MyNotificationResponseCopyWith<$R, MyNotificationResponse, $Out>
      get $asMyNotificationResponse =>
          $base.as((v, t, t2) => _MyNotificationResponseCopyWithImpl(v, t, t2));
}

abstract class MyNotificationResponseCopyWith<
    $R,
    $In extends MyNotificationResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  UserNotificationCopyWith<$R, UserNotification, UserNotification>? get tutor;
  UserNotificationCopyWith<$R, UserNotification, UserNotification>? get student;
  QuestionNotficationCopyWith<$R, QuestionNotfication, QuestionNotfication>?
      get question;
  $R call(
      {String? id,
      String? type,
      UserNotification? tutor,
      UserNotification? student,
      QuestionNotfication? question,
      int? role,
      DateTime? createdAt});
  MyNotificationResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MyNotificationResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MyNotificationResponse, $Out>
    implements
        MyNotificationResponseCopyWith<$R, MyNotificationResponse, $Out> {
  _MyNotificationResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MyNotificationResponse> $mapper =
      MyNotificationResponseMapper.ensureInitialized();
  @override
  UserNotificationCopyWith<$R, UserNotification, UserNotification>? get tutor =>
      $value.tutor?.copyWith.$chain((v) => call(tutor: v));
  @override
  UserNotificationCopyWith<$R, UserNotification, UserNotification>?
      get student => $value.student?.copyWith.$chain((v) => call(student: v));
  @override
  QuestionNotficationCopyWith<$R, QuestionNotfication, QuestionNotfication>?
      get question =>
          $value.question?.copyWith.$chain((v) => call(question: v));
  @override
  $R call(
          {Object? id = $none,
          Object? type = $none,
          Object? tutor = $none,
          Object? student = $none,
          Object? question = $none,
          Object? role = $none,
          Object? createdAt = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (type != $none) #type: type,
        if (tutor != $none) #tutor: tutor,
        if (student != $none) #student: student,
        if (question != $none) #question: question,
        if (role != $none) #role: role,
        if (createdAt != $none) #createdAt: createdAt
      }));
  @override
  MyNotificationResponse $make(CopyWithData data) => MyNotificationResponse(
      id: data.get(#id, or: $value.id),
      type: data.get(#type, or: $value.type),
      tutor: data.get(#tutor, or: $value.tutor),
      student: data.get(#student, or: $value.student),
      question: data.get(#question, or: $value.question),
      role: data.get(#role, or: $value.role),
      createdAt: data.get(#createdAt, or: $value.createdAt));

  @override
  MyNotificationResponseCopyWith<$R2, MyNotificationResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MyNotificationResponseCopyWithImpl($value, $cast, t);
}

class UserNotificationMapper extends ClassMapperBase<UserNotification> {
  UserNotificationMapper._();

  static UserNotificationMapper? _instance;
  static UserNotificationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserNotificationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserNotification';

  static String? _$id(UserNotification v) => v.id;
  static const Field<UserNotification, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$fullName(UserNotification v) => v.fullName;
  static const Field<UserNotification, String> _f$fullName =
      Field('fullName', _$fullName, opt: true);

  @override
  final MappableFields<UserNotification> fields = const {
    #id: _f$id,
    #fullName: _f$fullName,
  };

  static UserNotification _instantiate(DecodingData data) {
    return UserNotification(
        id: data.dec(_f$id), fullName: data.dec(_f$fullName));
  }

  @override
  final Function instantiate = _instantiate;

  static UserNotification fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserNotification>(map);
  }

  static UserNotification fromJsonString(String json) {
    return ensureInitialized().decodeJson<UserNotification>(json);
  }
}

mixin UserNotificationMappable {
  String toJsonString() {
    return UserNotificationMapper.ensureInitialized()
        .encodeJson<UserNotification>(this as UserNotification);
  }

  Map<String, dynamic> toJson() {
    return UserNotificationMapper.ensureInitialized()
        .encodeMap<UserNotification>(this as UserNotification);
  }

  UserNotificationCopyWith<UserNotification, UserNotification, UserNotification>
      get copyWith => _UserNotificationCopyWithImpl(
          this as UserNotification, $identity, $identity);
  @override
  String toString() {
    return UserNotificationMapper.ensureInitialized()
        .stringifyValue(this as UserNotification);
  }

  @override
  bool operator ==(Object other) {
    return UserNotificationMapper.ensureInitialized()
        .equalsValue(this as UserNotification, other);
  }

  @override
  int get hashCode {
    return UserNotificationMapper.ensureInitialized()
        .hashValue(this as UserNotification);
  }
}

extension UserNotificationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserNotification, $Out> {
  UserNotificationCopyWith<$R, UserNotification, $Out>
      get $asUserNotification =>
          $base.as((v, t, t2) => _UserNotificationCopyWithImpl(v, t, t2));
}

abstract class UserNotificationCopyWith<$R, $In extends UserNotification, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? fullName});
  UserNotificationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserNotificationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserNotification, $Out>
    implements UserNotificationCopyWith<$R, UserNotification, $Out> {
  _UserNotificationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserNotification> $mapper =
      UserNotificationMapper.ensureInitialized();
  @override
  $R call({Object? id = $none, Object? fullName = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (fullName != $none) #fullName: fullName
      }));
  @override
  UserNotification $make(CopyWithData data) => UserNotification(
      id: data.get(#id, or: $value.id),
      fullName: data.get(#fullName, or: $value.fullName));

  @override
  UserNotificationCopyWith<$R2, UserNotification, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserNotificationCopyWithImpl($value, $cast, t);
}

class QuestionNotficationMapper extends ClassMapperBase<QuestionNotfication> {
  QuestionNotficationMapper._();

  static QuestionNotficationMapper? _instance;
  static QuestionNotficationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = QuestionNotficationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'QuestionNotfication';

  static String? _$id(QuestionNotfication v) => v.id;
  static const Field<QuestionNotfication, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$title(QuestionNotfication v) => v.title;
  static const Field<QuestionNotfication, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$price(QuestionNotfication v) => v.price;
  static const Field<QuestionNotfication, String> _f$price =
      Field('price', _$price, opt: true);
  static String? _$promoPrice(QuestionNotfication v) => v.promoPrice;
  static const Field<QuestionNotfication, String> _f$promoPrice =
      Field('promoPrice', _$promoPrice, opt: true);

  @override
  final MappableFields<QuestionNotfication> fields = const {
    #id: _f$id,
    #title: _f$title,
    #price: _f$price,
    #promoPrice: _f$promoPrice,
  };

  static QuestionNotfication _instantiate(DecodingData data) {
    return QuestionNotfication(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        price: data.dec(_f$price),
        promoPrice: data.dec(_f$promoPrice));
  }

  @override
  final Function instantiate = _instantiate;

  static QuestionNotfication fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<QuestionNotfication>(map);
  }

  static QuestionNotfication fromJsonString(String json) {
    return ensureInitialized().decodeJson<QuestionNotfication>(json);
  }
}

mixin QuestionNotficationMappable {
  String toJsonString() {
    return QuestionNotficationMapper.ensureInitialized()
        .encodeJson<QuestionNotfication>(this as QuestionNotfication);
  }

  Map<String, dynamic> toJson() {
    return QuestionNotficationMapper.ensureInitialized()
        .encodeMap<QuestionNotfication>(this as QuestionNotfication);
  }

  QuestionNotficationCopyWith<QuestionNotfication, QuestionNotfication,
          QuestionNotfication>
      get copyWith => _QuestionNotficationCopyWithImpl(
          this as QuestionNotfication, $identity, $identity);
  @override
  String toString() {
    return QuestionNotficationMapper.ensureInitialized()
        .stringifyValue(this as QuestionNotfication);
  }

  @override
  bool operator ==(Object other) {
    return QuestionNotficationMapper.ensureInitialized()
        .equalsValue(this as QuestionNotfication, other);
  }

  @override
  int get hashCode {
    return QuestionNotficationMapper.ensureInitialized()
        .hashValue(this as QuestionNotfication);
  }
}

extension QuestionNotficationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, QuestionNotfication, $Out> {
  QuestionNotficationCopyWith<$R, QuestionNotfication, $Out>
      get $asQuestionNotfication =>
          $base.as((v, t, t2) => _QuestionNotficationCopyWithImpl(v, t, t2));
}

abstract class QuestionNotficationCopyWith<$R, $In extends QuestionNotfication,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? title, String? price, String? promoPrice});
  QuestionNotficationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _QuestionNotficationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, QuestionNotfication, $Out>
    implements QuestionNotficationCopyWith<$R, QuestionNotfication, $Out> {
  _QuestionNotficationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<QuestionNotfication> $mapper =
      QuestionNotficationMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? title = $none,
          Object? price = $none,
          Object? promoPrice = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (title != $none) #title: title,
        if (price != $none) #price: price,
        if (promoPrice != $none) #promoPrice: promoPrice
      }));
  @override
  QuestionNotfication $make(CopyWithData data) => QuestionNotfication(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      price: data.get(#price, or: $value.price),
      promoPrice: data.get(#promoPrice, or: $value.promoPrice));

  @override
  QuestionNotficationCopyWith<$R2, QuestionNotfication, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _QuestionNotficationCopyWithImpl($value, $cast, t);
}
