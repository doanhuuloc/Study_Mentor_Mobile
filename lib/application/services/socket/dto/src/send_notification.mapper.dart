// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'send_notification.dart';

class SendNotificationMapper extends ClassMapperBase<SendNotification> {
  SendNotificationMapper._();

  static SendNotificationMapper? _instance;
  static SendNotificationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SendNotificationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SendNotification';

  static String? _$userId(SendNotification v) => v.userId;
  static const Field<SendNotification, String> _f$userId =
      Field('userId', _$userId, opt: true);
  static String? _$message(SendNotification v) => v.message;
  static const Field<SendNotification, String> _f$message =
      Field('message', _$message, opt: true);

  @override
  final MappableFields<SendNotification> fields = const {
    #userId: _f$userId,
    #message: _f$message,
  };

  static SendNotification _instantiate(DecodingData data) {
    return SendNotification(
        userId: data.dec(_f$userId), message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static SendNotification fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SendNotification>(map);
  }

  static SendNotification fromJsonString(String json) {
    return ensureInitialized().decodeJson<SendNotification>(json);
  }
}

mixin SendNotificationMappable {
  String toJsonString() {
    return SendNotificationMapper.ensureInitialized()
        .encodeJson<SendNotification>(this as SendNotification);
  }

  Map<String, dynamic> toJson() {
    return SendNotificationMapper.ensureInitialized()
        .encodeMap<SendNotification>(this as SendNotification);
  }

  SendNotificationCopyWith<SendNotification, SendNotification, SendNotification>
      get copyWith => _SendNotificationCopyWithImpl(
          this as SendNotification, $identity, $identity);
  @override
  String toString() {
    return SendNotificationMapper.ensureInitialized()
        .stringifyValue(this as SendNotification);
  }

  @override
  bool operator ==(Object other) {
    return SendNotificationMapper.ensureInitialized()
        .equalsValue(this as SendNotification, other);
  }

  @override
  int get hashCode {
    return SendNotificationMapper.ensureInitialized()
        .hashValue(this as SendNotification);
  }
}

extension SendNotificationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SendNotification, $Out> {
  SendNotificationCopyWith<$R, SendNotification, $Out>
      get $asSendNotification =>
          $base.as((v, t, t2) => _SendNotificationCopyWithImpl(v, t, t2));
}

abstract class SendNotificationCopyWith<$R, $In extends SendNotification, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? userId, String? message});
  SendNotificationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SendNotificationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SendNotification, $Out>
    implements SendNotificationCopyWith<$R, SendNotification, $Out> {
  _SendNotificationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SendNotification> $mapper =
      SendNotificationMapper.ensureInitialized();
  @override
  $R call({Object? userId = $none, Object? message = $none}) =>
      $apply(FieldCopyWithData({
        if (userId != $none) #userId: userId,
        if (message != $none) #message: message
      }));
  @override
  SendNotification $make(CopyWithData data) => SendNotification(
      userId: data.get(#userId, or: $value.userId),
      message: data.get(#message, or: $value.message));

  @override
  SendNotificationCopyWith<$R2, SendNotification, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SendNotificationCopyWithImpl($value, $cast, t);
}
