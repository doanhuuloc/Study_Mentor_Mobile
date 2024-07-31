// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'check_account_bank_request.dart';

class CheckAccountBankRequestMapper
    extends ClassMapperBase<CheckAccountBankRequest> {
  CheckAccountBankRequestMapper._();

  static CheckAccountBankRequestMapper? _instance;
  static CheckAccountBankRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = CheckAccountBankRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CheckAccountBankRequest';

  static String _$bin(CheckAccountBankRequest v) => v.bin;
  static const Field<CheckAccountBankRequest, String> _f$bin =
      Field('bin', _$bin);
  static String _$accountNumber(CheckAccountBankRequest v) => v.accountNumber;
  static const Field<CheckAccountBankRequest, String> _f$accountNumber =
      Field('accountNumber', _$accountNumber);

  @override
  final MappableFields<CheckAccountBankRequest> fields = const {
    #bin: _f$bin,
    #accountNumber: _f$accountNumber,
  };

  static CheckAccountBankRequest _instantiate(DecodingData data) {
    return CheckAccountBankRequest(
        bin: data.dec(_f$bin), accountNumber: data.dec(_f$accountNumber));
  }

  @override
  final Function instantiate = _instantiate;

  static CheckAccountBankRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CheckAccountBankRequest>(map);
  }

  static CheckAccountBankRequest fromJsonString(String json) {
    return ensureInitialized().decodeJson<CheckAccountBankRequest>(json);
  }
}

mixin CheckAccountBankRequestMappable {
  String toJsonString() {
    return CheckAccountBankRequestMapper.ensureInitialized()
        .encodeJson<CheckAccountBankRequest>(this as CheckAccountBankRequest);
  }

  Map<String, dynamic> toJson() {
    return CheckAccountBankRequestMapper.ensureInitialized()
        .encodeMap<CheckAccountBankRequest>(this as CheckAccountBankRequest);
  }

  CheckAccountBankRequestCopyWith<CheckAccountBankRequest,
          CheckAccountBankRequest, CheckAccountBankRequest>
      get copyWith => _CheckAccountBankRequestCopyWithImpl(
          this as CheckAccountBankRequest, $identity, $identity);
  @override
  String toString() {
    return CheckAccountBankRequestMapper.ensureInitialized()
        .stringifyValue(this as CheckAccountBankRequest);
  }

  @override
  bool operator ==(Object other) {
    return CheckAccountBankRequestMapper.ensureInitialized()
        .equalsValue(this as CheckAccountBankRequest, other);
  }

  @override
  int get hashCode {
    return CheckAccountBankRequestMapper.ensureInitialized()
        .hashValue(this as CheckAccountBankRequest);
  }
}

extension CheckAccountBankRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CheckAccountBankRequest, $Out> {
  CheckAccountBankRequestCopyWith<$R, CheckAccountBankRequest, $Out>
      get $asCheckAccountBankRequest => $base
          .as((v, t, t2) => _CheckAccountBankRequestCopyWithImpl(v, t, t2));
}

abstract class CheckAccountBankRequestCopyWith<
    $R,
    $In extends CheckAccountBankRequest,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? bin, String? accountNumber});
  CheckAccountBankRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CheckAccountBankRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CheckAccountBankRequest, $Out>
    implements
        CheckAccountBankRequestCopyWith<$R, CheckAccountBankRequest, $Out> {
  _CheckAccountBankRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CheckAccountBankRequest> $mapper =
      CheckAccountBankRequestMapper.ensureInitialized();
  @override
  $R call({String? bin, String? accountNumber}) => $apply(FieldCopyWithData({
        if (bin != null) #bin: bin,
        if (accountNumber != null) #accountNumber: accountNumber
      }));
  @override
  CheckAccountBankRequest $make(CopyWithData data) => CheckAccountBankRequest(
      bin: data.get(#bin, or: $value.bin),
      accountNumber: data.get(#accountNumber, or: $value.accountNumber));

  @override
  CheckAccountBankRequestCopyWith<$R2, CheckAccountBankRequest, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CheckAccountBankRequestCopyWithImpl($value, $cast, t);
}
