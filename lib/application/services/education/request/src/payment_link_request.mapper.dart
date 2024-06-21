// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment_link_request.dart';

class PaymentLinkRequestMapper extends ClassMapperBase<PaymentLinkRequest> {
  PaymentLinkRequestMapper._();

  static PaymentLinkRequestMapper? _instance;
  static PaymentLinkRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentLinkRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentLinkRequest';

  static String? _$questionId(PaymentLinkRequest v) => v.questionId;
  static const Field<PaymentLinkRequest, String> _f$questionId =
      Field('questionId', _$questionId, opt: true);

  @override
  final MappableFields<PaymentLinkRequest> fields = const {
    #questionId: _f$questionId,
  };

  static PaymentLinkRequest _instantiate(DecodingData data) {
    return PaymentLinkRequest(questionId: data.dec(_f$questionId));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentLinkRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentLinkRequest>(map);
  }

  static PaymentLinkRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<PaymentLinkRequest>(json);
  }
}

mixin PaymentLinkRequestMappable {
  String toJsonString() {
    return PaymentLinkRequestMapper.ensureInitialized()
        .encodeJson<PaymentLinkRequest>(this as PaymentLinkRequest);
  }

  Map<String, dynamic> toJson() {
    return PaymentLinkRequestMapper.ensureInitialized()
        .encodeMap<PaymentLinkRequest>(this as PaymentLinkRequest);
  }

  PaymentLinkRequestCopyWith<PaymentLinkRequest, PaymentLinkRequest,
          PaymentLinkRequest>
      get copyWith => _PaymentLinkRequestCopyWithImpl(
          this as PaymentLinkRequest, $identity, $identity);
  @override
  String toString() {
    return PaymentLinkRequestMapper.ensureInitialized()
        .stringifyValue(this as PaymentLinkRequest);
  }

  @override
  bool operator ==(Object other) {
    return PaymentLinkRequestMapper.ensureInitialized()
        .equalsValue(this as PaymentLinkRequest, other);
  }

  @override
  int get hashCode {
    return PaymentLinkRequestMapper.ensureInitialized()
        .hashValue(this as PaymentLinkRequest);
  }
}

extension PaymentLinkRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentLinkRequest, $Out> {
  PaymentLinkRequestCopyWith<$R, PaymentLinkRequest, $Out>
      get $asPaymentLinkRequest =>
          $base.as((v, t, t2) => _PaymentLinkRequestCopyWithImpl(v, t, t2));
}

abstract class PaymentLinkRequestCopyWith<$R, $In extends PaymentLinkRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? questionId});
  PaymentLinkRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentLinkRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentLinkRequest, $Out>
    implements PaymentLinkRequestCopyWith<$R, PaymentLinkRequest, $Out> {
  _PaymentLinkRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentLinkRequest> $mapper =
      PaymentLinkRequestMapper.ensureInitialized();
  @override
  $R call({Object? questionId = $none}) => $apply(
      FieldCopyWithData({if (questionId != $none) #questionId: questionId}));
  @override
  PaymentLinkRequest $make(CopyWithData data) => PaymentLinkRequest(
      questionId: data.get(#questionId, or: $value.questionId));

  @override
  PaymentLinkRequestCopyWith<$R2, PaymentLinkRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PaymentLinkRequestCopyWithImpl($value, $cast, t);
}
