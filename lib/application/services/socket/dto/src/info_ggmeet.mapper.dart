// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'info_ggmeet.dart';

class InfoGGMeetMapper extends ClassMapperBase<InfoGGMeet> {
  InfoGGMeetMapper._();

  static InfoGGMeetMapper? _instance;
  static InfoGGMeetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InfoGGMeetMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InfoGGMeet';

  static String? _$studentId(InfoGGMeet v) => v.studentId;
  static const Field<InfoGGMeet, String> _f$studentId =
      Field('studentId', _$studentId, opt: true);
  static String? _$tutorId(InfoGGMeet v) => v.tutorId;
  static const Field<InfoGGMeet, String> _f$tutorId =
      Field('tutorId', _$tutorId, opt: true);
  static String? _$questionId(InfoGGMeet v) => v.questionId;
  static const Field<InfoGGMeet, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);
  static DateTime? _$meeting_start_time(InfoGGMeet v) => v.meeting_start_time;
  static const Field<InfoGGMeet, DateTime> _f$meeting_start_time =
      Field('meeting_start_time', _$meeting_start_time, opt: true);
  static bool? _$isStudent(InfoGGMeet v) => v.isStudent;
  static const Field<InfoGGMeet, bool> _f$isStudent =
      Field('isStudent', _$isStudent, opt: true);

  @override
  final MappableFields<InfoGGMeet> fields = const {
    #studentId: _f$studentId,
    #tutorId: _f$tutorId,
    #questionId: _f$questionId,
    #meeting_start_time: _f$meeting_start_time,
    #isStudent: _f$isStudent,
  };

  static InfoGGMeet _instantiate(DecodingData data) {
    return InfoGGMeet(
        studentId: data.dec(_f$studentId),
        tutorId: data.dec(_f$tutorId),
        questionId: data.dec(_f$questionId),
        meeting_start_time: data.dec(_f$meeting_start_time),
        isStudent: data.dec(_f$isStudent));
  }

  @override
  final Function instantiate = _instantiate;

  static InfoGGMeet fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InfoGGMeet>(map);
  }

  static InfoGGMeet fromJsonString(String json) {
    return ensureInitialized().decodeJson<InfoGGMeet>(json);
  }
}

mixin InfoGGMeetMappable {
  String toJsonString() {
    return InfoGGMeetMapper.ensureInitialized()
        .encodeJson<InfoGGMeet>(this as InfoGGMeet);
  }

  Map<String, dynamic> toJson() {
    return InfoGGMeetMapper.ensureInitialized()
        .encodeMap<InfoGGMeet>(this as InfoGGMeet);
  }

  InfoGGMeetCopyWith<InfoGGMeet, InfoGGMeet, InfoGGMeet> get copyWith =>
      _InfoGGMeetCopyWithImpl(this as InfoGGMeet, $identity, $identity);
  @override
  String toString() {
    return InfoGGMeetMapper.ensureInitialized()
        .stringifyValue(this as InfoGGMeet);
  }

  @override
  bool operator ==(Object other) {
    return InfoGGMeetMapper.ensureInitialized()
        .equalsValue(this as InfoGGMeet, other);
  }

  @override
  int get hashCode {
    return InfoGGMeetMapper.ensureInitialized().hashValue(this as InfoGGMeet);
  }
}

extension InfoGGMeetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InfoGGMeet, $Out> {
  InfoGGMeetCopyWith<$R, InfoGGMeet, $Out> get $asInfoGGMeet =>
      $base.as((v, t, t2) => _InfoGGMeetCopyWithImpl(v, t, t2));
}

abstract class InfoGGMeetCopyWith<$R, $In extends InfoGGMeet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? studentId,
      String? tutorId,
      String? questionId,
      DateTime? meeting_start_time,
      bool? isStudent});
  InfoGGMeetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InfoGGMeetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InfoGGMeet, $Out>
    implements InfoGGMeetCopyWith<$R, InfoGGMeet, $Out> {
  _InfoGGMeetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InfoGGMeet> $mapper =
      InfoGGMeetMapper.ensureInitialized();
  @override
  $R call(
          {Object? studentId = $none,
          Object? tutorId = $none,
          Object? questionId = $none,
          Object? meeting_start_time = $none,
          Object? isStudent = $none}) =>
      $apply(FieldCopyWithData({
        if (studentId != $none) #studentId: studentId,
        if (tutorId != $none) #tutorId: tutorId,
        if (questionId != $none) #questionId: questionId,
        if (meeting_start_time != $none)
          #meeting_start_time: meeting_start_time,
        if (isStudent != $none) #isStudent: isStudent
      }));
  @override
  InfoGGMeet $make(CopyWithData data) => InfoGGMeet(
      studentId: data.get(#studentId, or: $value.studentId),
      tutorId: data.get(#tutorId, or: $value.tutorId),
      questionId: data.get(#questionId, or: $value.questionId),
      meeting_start_time:
          data.get(#meeting_start_time, or: $value.meeting_start_time),
      isStudent: data.get(#isStudent, or: $value.isStudent));

  @override
  InfoGGMeetCopyWith<$R2, InfoGGMeet, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InfoGGMeetCopyWithImpl($value, $cast, t);
}
