// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'calculate_price_request.dart';

class CalculatePriceRequestMapper
    extends ClassMapperBase<CalculatePriceRequest> {
  CalculatePriceRequestMapper._();

  static CalculatePriceRequestMapper? _instance;
  static CalculatePriceRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalculatePriceRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CalculatePriceRequest';

  static String _$level(CalculatePriceRequest v) => v.level;
  static const Field<CalculatePriceRequest, String> _f$level =
      Field('level', _$level);
  static int _$numberOfStar(CalculatePriceRequest v) => v.numberOfStar;
  static const Field<CalculatePriceRequest, int> _f$numberOfStar =
      Field('numberOfStar', _$numberOfStar);
  static int _$timeFindTutor(CalculatePriceRequest v) => v.timeFindTutor;
  static const Field<CalculatePriceRequest, int> _f$timeFindTutor =
      Field('timeFindTutor', _$timeFindTutor);
  static String? _$voucherCode(CalculatePriceRequest v) => v.voucherCode;
  static const Field<CalculatePriceRequest, String> _f$voucherCode =
      Field('voucherCode', _$voucherCode, opt: true);

  @override
  final MappableFields<CalculatePriceRequest> fields = const {
    #level: _f$level,
    #numberOfStar: _f$numberOfStar,
    #timeFindTutor: _f$timeFindTutor,
    #voucherCode: _f$voucherCode,
  };

  static CalculatePriceRequest _instantiate(DecodingData data) {
    return CalculatePriceRequest(
        level: data.dec(_f$level),
        numberOfStar: data.dec(_f$numberOfStar),
        timeFindTutor: data.dec(_f$timeFindTutor),
        voucherCode: data.dec(_f$voucherCode));
  }

  @override
  final Function instantiate = _instantiate;

  static CalculatePriceRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalculatePriceRequest>(map);
  }

  static CalculatePriceRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<CalculatePriceRequest>(json);
  }
}

mixin CalculatePriceRequestMappable {
  String toJsonString() {
    return CalculatePriceRequestMapper.ensureInitialized()
        .encodeJson<CalculatePriceRequest>(this as CalculatePriceRequest);
  }

  Map<String, dynamic> toJson() {
    return CalculatePriceRequestMapper.ensureInitialized()
        .encodeMap<CalculatePriceRequest>(this as CalculatePriceRequest);
  }

  CalculatePriceRequestCopyWith<CalculatePriceRequest, CalculatePriceRequest,
          CalculatePriceRequest>
      get copyWith => _CalculatePriceRequestCopyWithImpl(
          this as CalculatePriceRequest, $identity, $identity);
  @override
  String toString() {
    return CalculatePriceRequestMapper.ensureInitialized()
        .stringifyValue(this as CalculatePriceRequest);
  }

  @override
  bool operator ==(Object other) {
    return CalculatePriceRequestMapper.ensureInitialized()
        .equalsValue(this as CalculatePriceRequest, other);
  }

  @override
  int get hashCode {
    return CalculatePriceRequestMapper.ensureInitialized()
        .hashValue(this as CalculatePriceRequest);
  }
}

extension CalculatePriceRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalculatePriceRequest, $Out> {
  CalculatePriceRequestCopyWith<$R, CalculatePriceRequest, $Out>
      get $asCalculatePriceRequest =>
          $base.as((v, t, t2) => _CalculatePriceRequestCopyWithImpl(v, t, t2));
}

abstract class CalculatePriceRequestCopyWith<
    $R,
    $In extends CalculatePriceRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? level,
      int? numberOfStar,
      int? timeFindTutor,
      String? voucherCode});
  CalculatePriceRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CalculatePriceRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalculatePriceRequest, $Out>
    implements CalculatePriceRequestCopyWith<$R, CalculatePriceRequest, $Out> {
  _CalculatePriceRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalculatePriceRequest> $mapper =
      CalculatePriceRequestMapper.ensureInitialized();
  @override
  $R call(
          {String? level,
          int? numberOfStar,
          int? timeFindTutor,
          Object? voucherCode = $none}) =>
      $apply(FieldCopyWithData({
        if (level != null) #level: level,
        if (numberOfStar != null) #numberOfStar: numberOfStar,
        if (timeFindTutor != null) #timeFindTutor: timeFindTutor,
        if (voucherCode != $none) #voucherCode: voucherCode
      }));
  @override
  CalculatePriceRequest $make(CopyWithData data) => CalculatePriceRequest(
      level: data.get(#level, or: $value.level),
      numberOfStar: data.get(#numberOfStar, or: $value.numberOfStar),
      timeFindTutor: data.get(#timeFindTutor, or: $value.timeFindTutor),
      voucherCode: data.get(#voucherCode, or: $value.voucherCode));

  @override
  CalculatePriceRequestCopyWith<$R2, CalculatePriceRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CalculatePriceRequestCopyWithImpl($value, $cast, t);
}
