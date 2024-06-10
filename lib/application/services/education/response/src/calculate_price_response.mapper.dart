// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'calculate_price_response.dart';

class CalculatePriceReponseMapper
    extends ClassMapperBase<CalculatePriceReponse> {
  CalculatePriceReponseMapper._();

  static CalculatePriceReponseMapper? _instance;
  static CalculatePriceReponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalculatePriceReponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CalculatePriceReponse';

  static double? _$price(CalculatePriceReponse v) => v.price;
  static const Field<CalculatePriceReponse, double> _f$price =
      Field('price', _$price, opt: true);
  static double? _$promoPrice(CalculatePriceReponse v) => v.promoPrice;
  static const Field<CalculatePriceReponse, double> _f$promoPrice =
      Field('promoPrice', _$promoPrice, opt: true);

  @override
  final MappableFields<CalculatePriceReponse> fields = const {
    #price: _f$price,
    #promoPrice: _f$promoPrice,
  };

  static CalculatePriceReponse _instantiate(DecodingData data) {
    return CalculatePriceReponse(
        price: data.dec(_f$price), promoPrice: data.dec(_f$promoPrice));
  }

  @override
  final Function instantiate = _instantiate;

  static CalculatePriceReponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalculatePriceReponse>(map);
  }

  static CalculatePriceReponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<CalculatePriceReponse>(json);
  }
}

mixin CalculatePriceReponseMappable {
  String toJsonString() {
    return CalculatePriceReponseMapper.ensureInitialized()
        .encodeJson<CalculatePriceReponse>(this as CalculatePriceReponse);
  }

  Map<String, dynamic> toJson() {
    return CalculatePriceReponseMapper.ensureInitialized()
        .encodeMap<CalculatePriceReponse>(this as CalculatePriceReponse);
  }

  CalculatePriceReponseCopyWith<CalculatePriceReponse, CalculatePriceReponse,
          CalculatePriceReponse>
      get copyWith => _CalculatePriceReponseCopyWithImpl(
          this as CalculatePriceReponse, $identity, $identity);
  @override
  String toString() {
    return CalculatePriceReponseMapper.ensureInitialized()
        .stringifyValue(this as CalculatePriceReponse);
  }

  @override
  bool operator ==(Object other) {
    return CalculatePriceReponseMapper.ensureInitialized()
        .equalsValue(this as CalculatePriceReponse, other);
  }

  @override
  int get hashCode {
    return CalculatePriceReponseMapper.ensureInitialized()
        .hashValue(this as CalculatePriceReponse);
  }
}

extension CalculatePriceReponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalculatePriceReponse, $Out> {
  CalculatePriceReponseCopyWith<$R, CalculatePriceReponse, $Out>
      get $asCalculatePriceReponse =>
          $base.as((v, t, t2) => _CalculatePriceReponseCopyWithImpl(v, t, t2));
}

abstract class CalculatePriceReponseCopyWith<
    $R,
    $In extends CalculatePriceReponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? price, double? promoPrice});
  CalculatePriceReponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CalculatePriceReponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalculatePriceReponse, $Out>
    implements CalculatePriceReponseCopyWith<$R, CalculatePriceReponse, $Out> {
  _CalculatePriceReponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalculatePriceReponse> $mapper =
      CalculatePriceReponseMapper.ensureInitialized();
  @override
  $R call({Object? price = $none, Object? promoPrice = $none}) =>
      $apply(FieldCopyWithData({
        if (price != $none) #price: price,
        if (promoPrice != $none) #promoPrice: promoPrice
      }));
  @override
  CalculatePriceReponse $make(CopyWithData data) => CalculatePriceReponse(
      price: data.get(#price, or: $value.price),
      promoPrice: data.get(#promoPrice, or: $value.promoPrice));

  @override
  CalculatePriceReponseCopyWith<$R2, CalculatePriceReponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CalculatePriceReponseCopyWithImpl($value, $cast, t);
}
