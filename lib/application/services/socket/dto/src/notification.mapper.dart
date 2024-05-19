// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'notification.dart';

class NotificationMapper extends ClassMapperBase<Notification> {
  NotificationMapper._();

  static NotificationMapper? _instance;
  static NotificationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotificationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Notification';

  static String? _$message(Notification v) => v.message;
  static const Field<Notification, String> _f$message =
      Field('message', _$message, opt: true);

  @override
  final MappableFields<Notification> fields = const {
    #message: _f$message,
  };

  static Notification _instantiate(DecodingData data) {
    return Notification(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static Notification fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Notification>(map);
  }

  static Notification fromJsonString(String json) {
    return ensureInitialized().decodeJson<Notification>(json);
  }
}

mixin NotificationMappable {
  String toJsonString() {
    return NotificationMapper.ensureInitialized()
        .encodeJson<Notification>(this as Notification);
  }

  Map<String, dynamic> toJson() {
    return NotificationMapper.ensureInitialized()
        .encodeMap<Notification>(this as Notification);
  }

  NotificationCopyWith<Notification, Notification, Notification> get copyWith =>
      _NotificationCopyWithImpl(this as Notification, $identity, $identity);
  @override
  String toString() {
    return NotificationMapper.ensureInitialized()
        .stringifyValue(this as Notification);
  }

  @override
  bool operator ==(Object other) {
    return NotificationMapper.ensureInitialized()
        .equalsValue(this as Notification, other);
  }

  @override
  int get hashCode {
    return NotificationMapper.ensureInitialized()
        .hashValue(this as Notification);
  }
}

extension NotificationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Notification, $Out> {
  NotificationCopyWith<$R, Notification, $Out> get $asNotification =>
      $base.as((v, t, t2) => _NotificationCopyWithImpl(v, t, t2));
}

abstract class NotificationCopyWith<$R, $In extends Notification, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message});
  NotificationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NotificationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Notification, $Out>
    implements NotificationCopyWith<$R, Notification, $Out> {
  _NotificationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Notification> $mapper =
      NotificationMapper.ensureInitialized();
  @override
  $R call({Object? message = $none}) =>
      $apply(FieldCopyWithData({if (message != $none) #message: message}));
  @override
  Notification $make(CopyWithData data) =>
      Notification(message: data.get(#message, or: $value.message));

  @override
  NotificationCopyWith<$R2, Notification, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotificationCopyWithImpl($value, $cast, t);
}
