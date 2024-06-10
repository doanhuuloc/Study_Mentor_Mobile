// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_voucher_response.dart';

class VoucherReponseMapper extends ClassMapperBase<VoucherReponse> {
  VoucherReponseMapper._();

  static VoucherReponseMapper? _instance;
  static VoucherReponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VoucherReponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VoucherReponse';

  static String? _$code(VoucherReponse v) => v.code;
  static const Field<VoucherReponse, String> _f$code =
      Field('code', _$code, opt: true);
  static String? _$percentage(VoucherReponse v) => v.percentage;
  static const Field<VoucherReponse, String> _f$percentage =
      Field('percentage', _$percentage, opt: true);
  static DateTime? _$endDate(VoucherReponse v) => v.endDate;
  static const Field<VoucherReponse, DateTime> _f$endDate =
      Field('endDate', _$endDate, opt: true);
  static int? _$quantity(VoucherReponse v) => v.quantity;
  static const Field<VoucherReponse, int> _f$quantity =
      Field('quantity', _$quantity, opt: true);

  @override
  final MappableFields<VoucherReponse> fields = const {
    #code: _f$code,
    #percentage: _f$percentage,
    #endDate: _f$endDate,
    #quantity: _f$quantity,
  };

  static VoucherReponse _instantiate(DecodingData data) {
    return VoucherReponse(
        code: data.dec(_f$code),
        percentage: data.dec(_f$percentage),
        endDate: data.dec(_f$endDate),
        quantity: data.dec(_f$quantity));
  }

  @override
  final Function instantiate = _instantiate;

  static VoucherReponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VoucherReponse>(map);
  }

  static VoucherReponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<VoucherReponse>(json);
  }
}

mixin VoucherReponseMappable {
  String toJsonString() {
    return VoucherReponseMapper.ensureInitialized()
        .encodeJson<VoucherReponse>(this as VoucherReponse);
  }

  Map<String, dynamic> toJson() {
    return VoucherReponseMapper.ensureInitialized()
        .encodeMap<VoucherReponse>(this as VoucherReponse);
  }

  VoucherReponseCopyWith<VoucherReponse, VoucherReponse, VoucherReponse>
      get copyWith => _VoucherReponseCopyWithImpl(
          this as VoucherReponse, $identity, $identity);
  @override
  String toString() {
    return VoucherReponseMapper.ensureInitialized()
        .stringifyValue(this as VoucherReponse);
  }

  @override
  bool operator ==(Object other) {
    return VoucherReponseMapper.ensureInitialized()
        .equalsValue(this as VoucherReponse, other);
  }

  @override
  int get hashCode {
    return VoucherReponseMapper.ensureInitialized()
        .hashValue(this as VoucherReponse);
  }
}

extension VoucherReponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VoucherReponse, $Out> {
  VoucherReponseCopyWith<$R, VoucherReponse, $Out> get $asVoucherReponse =>
      $base.as((v, t, t2) => _VoucherReponseCopyWithImpl(v, t, t2));
}

abstract class VoucherReponseCopyWith<$R, $In extends VoucherReponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? code, String? percentage, DateTime? endDate, int? quantity});
  VoucherReponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VoucherReponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VoucherReponse, $Out>
    implements VoucherReponseCopyWith<$R, VoucherReponse, $Out> {
  _VoucherReponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VoucherReponse> $mapper =
      VoucherReponseMapper.ensureInitialized();
  @override
  $R call(
          {Object? code = $none,
          Object? percentage = $none,
          Object? endDate = $none,
          Object? quantity = $none}) =>
      $apply(FieldCopyWithData({
        if (code != $none) #code: code,
        if (percentage != $none) #percentage: percentage,
        if (endDate != $none) #endDate: endDate,
        if (quantity != $none) #quantity: quantity
      }));
  @override
  VoucherReponse $make(CopyWithData data) => VoucherReponse(
      code: data.get(#code, or: $value.code),
      percentage: data.get(#percentage, or: $value.percentage),
      endDate: data.get(#endDate, or: $value.endDate),
      quantity: data.get(#quantity, or: $value.quantity));

  @override
  VoucherReponseCopyWith<$R2, VoucherReponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VoucherReponseCopyWithImpl($value, $cast, t);
}
