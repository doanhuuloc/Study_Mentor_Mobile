// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_question_info_response.dart';

class GetQuestionInfoResponseMapper
    extends ClassMapperBase<GetQuestionInfoResponse> {
  GetQuestionInfoResponseMapper._();

  static GetQuestionInfoResponseMapper? _instance;
  static GetQuestionInfoResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = GetQuestionInfoResponseMapper._());
      QuestionStatusMapper.ensureInitialized();
      FileResponseMapper.ensureInitialized();
      UserInfoResponseMapper.ensureInitialized();
      SubjectResponseMapper.ensureInitialized();
      AnswerMapper.ensureInitialized();
      QuestionTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetQuestionInfoResponse';

  static String? _$id(GetQuestionInfoResponse v) => v.id;
  static const Field<GetQuestionInfoResponse, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$title(GetQuestionInfoResponse v) => v.title;
  static const Field<GetQuestionInfoResponse, String> _f$title =
      Field('title', _$title, opt: true);
  static DateTime? _$createdAt(GetQuestionInfoResponse v) => v.createdAt;
  static const Field<GetQuestionInfoResponse, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, opt: true);
  static DateTime? _$updatedAt(GetQuestionInfoResponse v) => v.updatedAt;
  static const Field<GetQuestionInfoResponse, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, opt: true);
  static int? _$answerTime(GetQuestionInfoResponse v) => v.answerTime;
  static const Field<GetQuestionInfoResponse, int> _f$answerTime =
      Field('answerTime', _$answerTime, opt: true);
  static String? _$content(GetQuestionInfoResponse v) => v.content;
  static const Field<GetQuestionInfoResponse, String> _f$content =
      Field('content', _$content, opt: true);
  static String? _$price(GetQuestionInfoResponse v) => v.price;
  static const Field<GetQuestionInfoResponse, String> _f$price =
      Field('price', _$price, opt: true);
  static QuestionStatus? _$status(GetQuestionInfoResponse v) => v.status;
  static const Field<GetQuestionInfoResponse, QuestionStatus> _f$status =
      Field('status', _$status, opt: true);
  static bool? _$isPaid(GetQuestionInfoResponse v) => v.isPaid;
  static const Field<GetQuestionInfoResponse, bool> _f$isPaid =
      Field('isPaid', _$isPaid, opt: true);
  static int? _$type(GetQuestionInfoResponse v) => v.type;
  static const Field<GetQuestionInfoResponse, int> _f$type =
      Field('type', _$type, opt: true);
  static List<FileResponse>? _$fileQuestions(GetQuestionInfoResponse v) =>
      v.fileQuestions;
  static const Field<GetQuestionInfoResponse, List<FileResponse>>
      _f$fileQuestions = Field('fileQuestions', _$fileQuestions, opt: true);
  static UserInfoResponse? _$student(GetQuestionInfoResponse v) => v.student;
  static const Field<GetQuestionInfoResponse, UserInfoResponse> _f$student =
      Field('student', _$student, opt: true);
  static UserInfoResponse? _$tutor(GetQuestionInfoResponse v) => v.tutor;
  static const Field<GetQuestionInfoResponse, UserInfoResponse> _f$tutor =
      Field('tutor', _$tutor, opt: true);
  static SubjectResponse? _$subject(GetQuestionInfoResponse v) => v.subject;
  static const Field<GetQuestionInfoResponse, SubjectResponse> _f$subject =
      Field('subject', _$subject, opt: true);
  static List<Answer>? _$answers(GetQuestionInfoResponse v) => v.answers;
  static const Field<GetQuestionInfoResponse, List<Answer>> _f$answers =
      Field('answers', _$answers, opt: true);
  static bool? _$isAccepted(GetQuestionInfoResponse v) => v.isAccepted;
  static const Field<GetQuestionInfoResponse, bool> _f$isAccepted =
      Field('isAccepted', _$isAccepted, opt: true);
  static bool? _$isAnswered(GetQuestionInfoResponse v) => v.isAnswered;
  static const Field<GetQuestionInfoResponse, bool> _f$isAnswered =
      Field('isAnswered', _$isAnswered, opt: true);
  static QuestionType? _$questionType(GetQuestionInfoResponse v) =>
      v.questionType;
  static const Field<GetQuestionInfoResponse, QuestionType> _f$questionType =
      Field('questionType', _$questionType, opt: true);
  static String? _$meetingURL(GetQuestionInfoResponse v) => v.meetingURL;
  static const Field<GetQuestionInfoResponse, String> _f$meetingURL =
      Field('meetingURL', _$meetingURL, opt: true);
  static int? _$timeMetting(GetQuestionInfoResponse v) => v.timeMetting;
  static const Field<GetQuestionInfoResponse, int> _f$timeMetting =
      Field('timeMetting', _$timeMetting, opt: true);

  @override
  final MappableFields<GetQuestionInfoResponse> fields = const {
    #id: _f$id,
    #title: _f$title,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #answerTime: _f$answerTime,
    #content: _f$content,
    #price: _f$price,
    #status: _f$status,
    #isPaid: _f$isPaid,
    #type: _f$type,
    #fileQuestions: _f$fileQuestions,
    #student: _f$student,
    #tutor: _f$tutor,
    #subject: _f$subject,
    #answers: _f$answers,
    #isAccepted: _f$isAccepted,
    #isAnswered: _f$isAnswered,
    #questionType: _f$questionType,
    #meetingURL: _f$meetingURL,
    #timeMetting: _f$timeMetting,
  };

  static GetQuestionInfoResponse _instantiate(DecodingData data) {
    return GetQuestionInfoResponse(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        answerTime: data.dec(_f$answerTime),
        content: data.dec(_f$content),
        price: data.dec(_f$price),
        status: data.dec(_f$status),
        isPaid: data.dec(_f$isPaid),
        type: data.dec(_f$type),
        fileQuestions: data.dec(_f$fileQuestions),
        student: data.dec(_f$student),
        tutor: data.dec(_f$tutor),
        subject: data.dec(_f$subject),
        answers: data.dec(_f$answers),
        isAccepted: data.dec(_f$isAccepted),
        isAnswered: data.dec(_f$isAnswered),
        questionType: data.dec(_f$questionType),
        meetingURL: data.dec(_f$meetingURL),
        timeMetting: data.dec(_f$timeMetting));
  }

  @override
  final Function instantiate = _instantiate;

  static GetQuestionInfoResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetQuestionInfoResponse>(map);
  }

  static GetQuestionInfoResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<GetQuestionInfoResponse>(json);
  }
}

mixin GetQuestionInfoResponseMappable {
  String toJsonString() {
    return GetQuestionInfoResponseMapper.ensureInitialized()
        .encodeJson<GetQuestionInfoResponse>(this as GetQuestionInfoResponse);
  }

  Map<String, dynamic> toJson() {
    return GetQuestionInfoResponseMapper.ensureInitialized()
        .encodeMap<GetQuestionInfoResponse>(this as GetQuestionInfoResponse);
  }

  GetQuestionInfoResponseCopyWith<GetQuestionInfoResponse,
          GetQuestionInfoResponse, GetQuestionInfoResponse>
      get copyWith => _GetQuestionInfoResponseCopyWithImpl(
          this as GetQuestionInfoResponse, $identity, $identity);
  @override
  String toString() {
    return GetQuestionInfoResponseMapper.ensureInitialized()
        .stringifyValue(this as GetQuestionInfoResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetQuestionInfoResponseMapper.ensureInitialized()
        .equalsValue(this as GetQuestionInfoResponse, other);
  }

  @override
  int get hashCode {
    return GetQuestionInfoResponseMapper.ensureInitialized()
        .hashValue(this as GetQuestionInfoResponse);
  }
}

extension GetQuestionInfoResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetQuestionInfoResponse, $Out> {
  GetQuestionInfoResponseCopyWith<$R, GetQuestionInfoResponse, $Out>
      get $asGetQuestionInfoResponse => $base
          .as((v, t, t2) => _GetQuestionInfoResponseCopyWithImpl(v, t, t2));
}

abstract class GetQuestionInfoResponseCopyWith<
    $R,
    $In extends GetQuestionInfoResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, FileResponse,
      FileResponseCopyWith<$R, FileResponse, FileResponse>>? get fileQuestions;
  UserInfoResponseCopyWith<$R, UserInfoResponse, UserInfoResponse>? get student;
  UserInfoResponseCopyWith<$R, UserInfoResponse, UserInfoResponse>? get tutor;
  SubjectResponseCopyWith<$R, SubjectResponse, SubjectResponse>? get subject;
  ListCopyWith<$R, Answer, AnswerCopyWith<$R, Answer, Answer>>? get answers;
  $R call(
      {String? id,
      String? title,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? answerTime,
      String? content,
      String? price,
      QuestionStatus? status,
      bool? isPaid,
      int? type,
      List<FileResponse>? fileQuestions,
      UserInfoResponse? student,
      UserInfoResponse? tutor,
      SubjectResponse? subject,
      List<Answer>? answers,
      bool? isAccepted,
      bool? isAnswered,
      QuestionType? questionType,
      String? meetingURL,
      int? timeMetting});
  GetQuestionInfoResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetQuestionInfoResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetQuestionInfoResponse, $Out>
    implements
        GetQuestionInfoResponseCopyWith<$R, GetQuestionInfoResponse, $Out> {
  _GetQuestionInfoResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetQuestionInfoResponse> $mapper =
      GetQuestionInfoResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, FileResponse,
          FileResponseCopyWith<$R, FileResponse, FileResponse>>?
      get fileQuestions => $value.fileQuestions != null
          ? ListCopyWith($value.fileQuestions!, (v, t) => v.copyWith.$chain(t),
              (v) => call(fileQuestions: v))
          : null;
  @override
  UserInfoResponseCopyWith<$R, UserInfoResponse, UserInfoResponse>?
      get student => $value.student?.copyWith.$chain((v) => call(student: v));
  @override
  UserInfoResponseCopyWith<$R, UserInfoResponse, UserInfoResponse>? get tutor =>
      $value.tutor?.copyWith.$chain((v) => call(tutor: v));
  @override
  SubjectResponseCopyWith<$R, SubjectResponse, SubjectResponse>? get subject =>
      $value.subject?.copyWith.$chain((v) => call(subject: v));
  @override
  ListCopyWith<$R, Answer, AnswerCopyWith<$R, Answer, Answer>>? get answers =>
      $value.answers != null
          ? ListCopyWith($value.answers!, (v, t) => v.copyWith.$chain(t),
              (v) => call(answers: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? title = $none,
          Object? createdAt = $none,
          Object? updatedAt = $none,
          Object? answerTime = $none,
          Object? content = $none,
          Object? price = $none,
          Object? status = $none,
          Object? isPaid = $none,
          Object? type = $none,
          Object? fileQuestions = $none,
          Object? student = $none,
          Object? tutor = $none,
          Object? subject = $none,
          Object? answers = $none,
          Object? isAccepted = $none,
          Object? isAnswered = $none,
          Object? questionType = $none,
          Object? meetingURL = $none,
          Object? timeMetting = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (title != $none) #title: title,
        if (createdAt != $none) #createdAt: createdAt,
        if (updatedAt != $none) #updatedAt: updatedAt,
        if (answerTime != $none) #answerTime: answerTime,
        if (content != $none) #content: content,
        if (price != $none) #price: price,
        if (status != $none) #status: status,
        if (isPaid != $none) #isPaid: isPaid,
        if (type != $none) #type: type,
        if (fileQuestions != $none) #fileQuestions: fileQuestions,
        if (student != $none) #student: student,
        if (tutor != $none) #tutor: tutor,
        if (subject != $none) #subject: subject,
        if (answers != $none) #answers: answers,
        if (isAccepted != $none) #isAccepted: isAccepted,
        if (isAnswered != $none) #isAnswered: isAnswered,
        if (questionType != $none) #questionType: questionType,
        if (meetingURL != $none) #meetingURL: meetingURL,
        if (timeMetting != $none) #timeMetting: timeMetting
      }));
  @override
  GetQuestionInfoResponse $make(CopyWithData data) => GetQuestionInfoResponse(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      answerTime: data.get(#answerTime, or: $value.answerTime),
      content: data.get(#content, or: $value.content),
      price: data.get(#price, or: $value.price),
      status: data.get(#status, or: $value.status),
      isPaid: data.get(#isPaid, or: $value.isPaid),
      type: data.get(#type, or: $value.type),
      fileQuestions: data.get(#fileQuestions, or: $value.fileQuestions),
      student: data.get(#student, or: $value.student),
      tutor: data.get(#tutor, or: $value.tutor),
      subject: data.get(#subject, or: $value.subject),
      answers: data.get(#answers, or: $value.answers),
      isAccepted: data.get(#isAccepted, or: $value.isAccepted),
      isAnswered: data.get(#isAnswered, or: $value.isAnswered),
      questionType: data.get(#questionType, or: $value.questionType),
      meetingURL: data.get(#meetingURL, or: $value.meetingURL),
      timeMetting: data.get(#timeMetting, or: $value.timeMetting));

  @override
  GetQuestionInfoResponseCopyWith<$R2, GetQuestionInfoResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetQuestionInfoResponseCopyWithImpl($value, $cast, t);
}
