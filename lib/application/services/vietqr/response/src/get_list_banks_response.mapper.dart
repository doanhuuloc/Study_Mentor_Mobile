// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_list_banks_response.dart';

class BankMapper extends ClassMapperBase<Bank> {
  BankMapper._();

  static BankMapper? _instance;
  static BankMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BankMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Bank';

  static String? _$id(Bank v) => v.id;
  static const Field<Bank, String> _f$id = Field('id', _$id, opt: true);
  static String? _$bin(Bank v) => v.bin;
  static const Field<Bank, String> _f$bin = Field('bin', _$bin, opt: true);
  static String? _$code(Bank v) => v.code;
  static const Field<Bank, String> _f$code = Field('code', _$code, opt: true);
  static String? _$logo(Bank v) => v.logo;
  static const Field<Bank, String> _f$logo = Field('logo', _$logo, opt: true);
  static String? _$lookupSupported(Bank v) => v.lookupSupported;
  static const Field<Bank, String> _f$lookupSupported =
      Field('lookupSupported', _$lookupSupported, opt: true);
  static String? _$name(Bank v) => v.name;
  static const Field<Bank, String> _f$name = Field('name', _$name, opt: true);
  static String? _$shortName(Bank v) => v.shortName;
  static const Field<Bank, String> _f$shortName =
      Field('shortName', _$shortName, opt: true);
  static String? _$transferSupported(Bank v) => v.transferSupported;
  static const Field<Bank, String> _f$transferSupported =
      Field('transferSupported', _$transferSupported, opt: true);

  @override
  final MappableFields<Bank> fields = const {
    #id: _f$id,
    #bin: _f$bin,
    #code: _f$code,
    #logo: _f$logo,
    #lookupSupported: _f$lookupSupported,
    #name: _f$name,
    #shortName: _f$shortName,
    #transferSupported: _f$transferSupported,
  };

  static Bank _instantiate(DecodingData data) {
    return Bank(
        id: data.dec(_f$id),
        bin: data.dec(_f$bin),
        code: data.dec(_f$code),
        logo: data.dec(_f$logo),
        lookupSupported: data.dec(_f$lookupSupported),
        name: data.dec(_f$name),
        shortName: data.dec(_f$shortName),
        transferSupported: data.dec(_f$transferSupported));
  }

  @override
  final Function instantiate = _instantiate;

  static Bank fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Bank>(map);
  }

  static Bank fromJsonString(String json) {
    return ensureInitialized().decodeJson<Bank>(json);
  }
}

mixin BankMappable {
  String toJsonString() {
    return BankMapper.ensureInitialized().encodeJson<Bank>(this as Bank);
  }

  Map<String, dynamic> toJson() {
    return BankMapper.ensureInitialized().encodeMap<Bank>(this as Bank);
  }

  BankCopyWith<Bank, Bank, Bank> get copyWith =>
      _BankCopyWithImpl(this as Bank, $identity, $identity);
  @override
  String toString() {
    return BankMapper.ensureInitialized().stringifyValue(this as Bank);
  }

  @override
  bool operator ==(Object other) {
    return BankMapper.ensureInitialized().equalsValue(this as Bank, other);
  }

  @override
  int get hashCode {
    return BankMapper.ensureInitialized().hashValue(this as Bank);
  }
}

extension BankValueCopy<$R, $Out> on ObjectCopyWith<$R, Bank, $Out> {
  BankCopyWith<$R, Bank, $Out> get $asBank =>
      $base.as((v, t, t2) => _BankCopyWithImpl(v, t, t2));
}

abstract class BankCopyWith<$R, $In extends Bank, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? bin,
      String? code,
      String? logo,
      String? lookupSupported,
      String? name,
      String? shortName,
      String? transferSupported});
  BankCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BankCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Bank, $Out>
    implements BankCopyWith<$R, Bank, $Out> {
  _BankCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Bank> $mapper = BankMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? bin = $none,
          Object? code = $none,
          Object? logo = $none,
          Object? lookupSupported = $none,
          Object? name = $none,
          Object? shortName = $none,
          Object? transferSupported = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (bin != $none) #bin: bin,
        if (code != $none) #code: code,
        if (logo != $none) #logo: logo,
        if (lookupSupported != $none) #lookupSupported: lookupSupported,
        if (name != $none) #name: name,
        if (shortName != $none) #shortName: shortName,
        if (transferSupported != $none) #transferSupported: transferSupported
      }));
  @override
  Bank $make(CopyWithData data) => Bank(
      id: data.get(#id, or: $value.id),
      bin: data.get(#bin, or: $value.bin),
      code: data.get(#code, or: $value.code),
      logo: data.get(#logo, or: $value.logo),
      lookupSupported: data.get(#lookupSupported, or: $value.lookupSupported),
      name: data.get(#name, or: $value.name),
      shortName: data.get(#shortName, or: $value.shortName),
      transferSupported:
          data.get(#transferSupported, or: $value.transferSupported));

  @override
  BankCopyWith<$R2, Bank, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BankCopyWithImpl($value, $cast, t);
}
