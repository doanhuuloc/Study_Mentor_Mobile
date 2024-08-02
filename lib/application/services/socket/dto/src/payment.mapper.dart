// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment.dart';

class PaymentMapper extends ClassMapperBase<Payment> {
  PaymentMapper._();

  static PaymentMapper? _instance;
  static PaymentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentMapper._());
      PaymentDetailedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Payment';

  static PaymentDetailed? _$data(Payment v) => v.data;
  static const Field<Payment, PaymentDetailed> _f$data =
      Field('data', _$data, opt: true);

  @override
  final MappableFields<Payment> fields = const {
    #data: _f$data,
  };

  static Payment _instantiate(DecodingData data) {
    return Payment(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static Payment fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Payment>(map);
  }

  static Payment fromJsonString(String json) {
    return ensureInitialized().decodeJson<Payment>(json);
  }
}

mixin PaymentMappable {
  String toJsonString() {
    return PaymentMapper.ensureInitialized()
        .encodeJson<Payment>(this as Payment);
  }

  Map<String, dynamic> toJson() {
    return PaymentMapper.ensureInitialized()
        .encodeMap<Payment>(this as Payment);
  }

  PaymentCopyWith<Payment, Payment, Payment> get copyWith =>
      _PaymentCopyWithImpl(this as Payment, $identity, $identity);
  @override
  String toString() {
    return PaymentMapper.ensureInitialized().stringifyValue(this as Payment);
  }

  @override
  bool operator ==(Object other) {
    return PaymentMapper.ensureInitialized()
        .equalsValue(this as Payment, other);
  }

  @override
  int get hashCode {
    return PaymentMapper.ensureInitialized().hashValue(this as Payment);
  }
}

extension PaymentValueCopy<$R, $Out> on ObjectCopyWith<$R, Payment, $Out> {
  PaymentCopyWith<$R, Payment, $Out> get $asPayment =>
      $base.as((v, t, t2) => _PaymentCopyWithImpl(v, t, t2));
}

abstract class PaymentCopyWith<$R, $In extends Payment, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PaymentDetailedCopyWith<$R, PaymentDetailed, PaymentDetailed>? get data;
  $R call({PaymentDetailed? data});
  PaymentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaymentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Payment, $Out>
    implements PaymentCopyWith<$R, Payment, $Out> {
  _PaymentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Payment> $mapper =
      PaymentMapper.ensureInitialized();
  @override
  PaymentDetailedCopyWith<$R, PaymentDetailed, PaymentDetailed>? get data =>
      $value.data?.copyWith.$chain((v) => call(data: v));
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  Payment $make(CopyWithData data) =>
      Payment(data: data.get(#data, or: $value.data));

  @override
  PaymentCopyWith<$R2, Payment, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PaymentCopyWithImpl($value, $cast, t);
}

class PaymentDetailedMapper extends ClassMapperBase<PaymentDetailed> {
  PaymentDetailedMapper._();

  static PaymentDetailedMapper? _instance;
  static PaymentDetailedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentDetailedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentDetailed';

  static bool? _$isPaidSuccess(PaymentDetailed v) => v.isPaidSuccess;
  static const Field<PaymentDetailed, bool> _f$isPaidSuccess =
      Field('isPaidSuccess', _$isPaidSuccess, opt: true);
  static int? _$type(PaymentDetailed v) => v.type;
  static const Field<PaymentDetailed, int> _f$type =
      Field('type', _$type, opt: true);

  @override
  final MappableFields<PaymentDetailed> fields = const {
    #isPaidSuccess: _f$isPaidSuccess,
    #type: _f$type,
  };

  static PaymentDetailed _instantiate(DecodingData data) {
    return PaymentDetailed(
        isPaidSuccess: data.dec(_f$isPaidSuccess), type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentDetailed fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentDetailed>(map);
  }

  static PaymentDetailed fromJsonString(String json) {
    return ensureInitialized().decodeJson<PaymentDetailed>(json);
  }
}

mixin PaymentDetailedMappable {
  String toJsonString() {
    return PaymentDetailedMapper.ensureInitialized()
        .encodeJson<PaymentDetailed>(this as PaymentDetailed);
  }

  Map<String, dynamic> toJson() {
    return PaymentDetailedMapper.ensureInitialized()
        .encodeMap<PaymentDetailed>(this as PaymentDetailed);
  }

  PaymentDetailedCopyWith<PaymentDetailed, PaymentDetailed, PaymentDetailed>
      get copyWith => _PaymentDetailedCopyWithImpl(
          this as PaymentDetailed, $identity, $identity);
  @override
  String toString() {
    return PaymentDetailedMapper.ensureInitialized()
        .stringifyValue(this as PaymentDetailed);
  }

  @override
  bool operator ==(Object other) {
    return PaymentDetailedMapper.ensureInitialized()
        .equalsValue(this as PaymentDetailed, other);
  }

  @override
  int get hashCode {
    return PaymentDetailedMapper.ensureInitialized()
        .hashValue(this as PaymentDetailed);
  }
}

extension PaymentDetailedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentDetailed, $Out> {
  PaymentDetailedCopyWith<$R, PaymentDetailed, $Out> get $asPaymentDetailed =>
      $base.as((v, t, t2) => _PaymentDetailedCopyWithImpl(v, t, t2));
}

abstract class PaymentDetailedCopyWith<$R, $In extends PaymentDetailed, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? isPaidSuccess, int? type});
  PaymentDetailedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentDetailedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentDetailed, $Out>
    implements PaymentDetailedCopyWith<$R, PaymentDetailed, $Out> {
  _PaymentDetailedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentDetailed> $mapper =
      PaymentDetailedMapper.ensureInitialized();
  @override
  $R call({Object? isPaidSuccess = $none, Object? type = $none}) =>
      $apply(FieldCopyWithData({
        if (isPaidSuccess != $none) #isPaidSuccess: isPaidSuccess,
        if (type != $none) #type: type
      }));
  @override
  PaymentDetailed $make(CopyWithData data) => PaymentDetailed(
      isPaidSuccess: data.get(#isPaidSuccess, or: $value.isPaidSuccess),
      type: data.get(#type, or: $value.type));

  @override
  PaymentDetailedCopyWith<$R2, PaymentDetailed, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentDetailedCopyWithImpl($value, $cast, t);
}
