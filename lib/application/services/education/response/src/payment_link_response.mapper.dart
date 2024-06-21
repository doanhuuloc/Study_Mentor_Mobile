// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'payment_link_response.dart';

class PaymentLinkResponseMapper extends ClassMapperBase<PaymentLinkResponse> {
  PaymentLinkResponseMapper._();

  static PaymentLinkResponseMapper? _instance;
  static PaymentLinkResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaymentLinkResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PaymentLinkResponse';

  static String? _$checkoutUrl(PaymentLinkResponse v) => v.checkoutUrl;
  static const Field<PaymentLinkResponse, String> _f$checkoutUrl =
      Field('checkoutUrl', _$checkoutUrl, opt: true);

  @override
  final MappableFields<PaymentLinkResponse> fields = const {
    #checkoutUrl: _f$checkoutUrl,
  };

  static PaymentLinkResponse _instantiate(DecodingData data) {
    return PaymentLinkResponse(checkoutUrl: data.dec(_f$checkoutUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static PaymentLinkResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PaymentLinkResponse>(map);
  }

  static PaymentLinkResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<PaymentLinkResponse>(json);
  }
}

mixin PaymentLinkResponseMappable {
  String toJsonString() {
    return PaymentLinkResponseMapper.ensureInitialized()
        .encodeJson<PaymentLinkResponse>(this as PaymentLinkResponse);
  }

  Map<String, dynamic> toJson() {
    return PaymentLinkResponseMapper.ensureInitialized()
        .encodeMap<PaymentLinkResponse>(this as PaymentLinkResponse);
  }

  PaymentLinkResponseCopyWith<PaymentLinkResponse, PaymentLinkResponse,
          PaymentLinkResponse>
      get copyWith => _PaymentLinkResponseCopyWithImpl(
          this as PaymentLinkResponse, $identity, $identity);
  @override
  String toString() {
    return PaymentLinkResponseMapper.ensureInitialized()
        .stringifyValue(this as PaymentLinkResponse);
  }

  @override
  bool operator ==(Object other) {
    return PaymentLinkResponseMapper.ensureInitialized()
        .equalsValue(this as PaymentLinkResponse, other);
  }

  @override
  int get hashCode {
    return PaymentLinkResponseMapper.ensureInitialized()
        .hashValue(this as PaymentLinkResponse);
  }
}

extension PaymentLinkResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PaymentLinkResponse, $Out> {
  PaymentLinkResponseCopyWith<$R, PaymentLinkResponse, $Out>
      get $asPaymentLinkResponse =>
          $base.as((v, t, t2) => _PaymentLinkResponseCopyWithImpl(v, t, t2));
}

abstract class PaymentLinkResponseCopyWith<$R, $In extends PaymentLinkResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? checkoutUrl});
  PaymentLinkResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PaymentLinkResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PaymentLinkResponse, $Out>
    implements PaymentLinkResponseCopyWith<$R, PaymentLinkResponse, $Out> {
  _PaymentLinkResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PaymentLinkResponse> $mapper =
      PaymentLinkResponseMapper.ensureInitialized();
  @override
  $R call({Object? checkoutUrl = $none}) => $apply(
      FieldCopyWithData({if (checkoutUrl != $none) #checkoutUrl: checkoutUrl}));
  @override
  PaymentLinkResponse $make(CopyWithData data) => PaymentLinkResponse(
      checkoutUrl: data.get(#checkoutUrl, or: $value.checkoutUrl));

  @override
  PaymentLinkResponseCopyWith<$R2, PaymentLinkResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PaymentLinkResponseCopyWithImpl($value, $cast, t);
}
