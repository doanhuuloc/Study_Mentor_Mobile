// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'receive_ggmeet.dart';

class ReceiveGGMeetMapper extends ClassMapperBase<ReceiveGGMeet> {
  ReceiveGGMeetMapper._();

  static ReceiveGGMeetMapper? _instance;
  static ReceiveGGMeetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReceiveGGMeetMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ReceiveGGMeet';

  static String? _$meetingUrl(ReceiveGGMeet v) => v.meetingUrl;
  static const Field<ReceiveGGMeet, String> _f$meetingUrl =
      Field('meetingUrl', _$meetingUrl, opt: true);
  static DateTime? _$meeting_end_time(ReceiveGGMeet v) => v.meeting_end_time;
  static const Field<ReceiveGGMeet, DateTime> _f$meeting_end_time =
      Field('meeting_end_time', _$meeting_end_time, opt: true);
  static DateTime? _$meeting_start_time(ReceiveGGMeet v) =>
      v.meeting_start_time;
  static const Field<ReceiveGGMeet, DateTime> _f$meeting_start_time =
      Field('meeting_start_time', _$meeting_start_time, opt: true);

  @override
  final MappableFields<ReceiveGGMeet> fields = const {
    #meetingUrl: _f$meetingUrl,
    #meeting_end_time: _f$meeting_end_time,
    #meeting_start_time: _f$meeting_start_time,
  };

  static ReceiveGGMeet _instantiate(DecodingData data) {
    return ReceiveGGMeet(
        meetingUrl: data.dec(_f$meetingUrl),
        meeting_end_time: data.dec(_f$meeting_end_time),
        meeting_start_time: data.dec(_f$meeting_start_time));
  }

  @override
  final Function instantiate = _instantiate;

  static ReceiveGGMeet fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReceiveGGMeet>(map);
  }

  static ReceiveGGMeet fromJsonString(String json) {
    return ensureInitialized().decodeJson<ReceiveGGMeet>(json);
  }
}

mixin ReceiveGGMeetMappable {
  String toJsonString() {
    return ReceiveGGMeetMapper.ensureInitialized()
        .encodeJson<ReceiveGGMeet>(this as ReceiveGGMeet);
  }

  Map<String, dynamic> toJson() {
    return ReceiveGGMeetMapper.ensureInitialized()
        .encodeMap<ReceiveGGMeet>(this as ReceiveGGMeet);
  }

  ReceiveGGMeetCopyWith<ReceiveGGMeet, ReceiveGGMeet, ReceiveGGMeet>
      get copyWith => _ReceiveGGMeetCopyWithImpl(
          this as ReceiveGGMeet, $identity, $identity);
  @override
  String toString() {
    return ReceiveGGMeetMapper.ensureInitialized()
        .stringifyValue(this as ReceiveGGMeet);
  }

  @override
  bool operator ==(Object other) {
    return ReceiveGGMeetMapper.ensureInitialized()
        .equalsValue(this as ReceiveGGMeet, other);
  }

  @override
  int get hashCode {
    return ReceiveGGMeetMapper.ensureInitialized()
        .hashValue(this as ReceiveGGMeet);
  }
}

extension ReceiveGGMeetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReceiveGGMeet, $Out> {
  ReceiveGGMeetCopyWith<$R, ReceiveGGMeet, $Out> get $asReceiveGGMeet =>
      $base.as((v, t, t2) => _ReceiveGGMeetCopyWithImpl(v, t, t2));
}

abstract class ReceiveGGMeetCopyWith<$R, $In extends ReceiveGGMeet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? meetingUrl,
      DateTime? meeting_end_time,
      DateTime? meeting_start_time});
  ReceiveGGMeetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReceiveGGMeetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReceiveGGMeet, $Out>
    implements ReceiveGGMeetCopyWith<$R, ReceiveGGMeet, $Out> {
  _ReceiveGGMeetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReceiveGGMeet> $mapper =
      ReceiveGGMeetMapper.ensureInitialized();
  @override
  $R call(
          {Object? meetingUrl = $none,
          Object? meeting_end_time = $none,
          Object? meeting_start_time = $none}) =>
      $apply(FieldCopyWithData({
        if (meetingUrl != $none) #meetingUrl: meetingUrl,
        if (meeting_end_time != $none) #meeting_end_time: meeting_end_time,
        if (meeting_start_time != $none) #meeting_start_time: meeting_start_time
      }));
  @override
  ReceiveGGMeet $make(CopyWithData data) => ReceiveGGMeet(
      meetingUrl: data.get(#meetingUrl, or: $value.meetingUrl),
      meeting_end_time:
          data.get(#meeting_end_time, or: $value.meeting_end_time),
      meeting_start_time:
          data.get(#meeting_start_time, or: $value.meeting_start_time));

  @override
  ReceiveGGMeetCopyWith<$R2, ReceiveGGMeet, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReceiveGGMeetCopyWithImpl($value, $cast, t);
}
