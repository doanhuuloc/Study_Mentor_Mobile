// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'check_account_bank_response.dart';

class CheckAccountBankResponseMapper
    extends ClassMapperBase<CheckAccountBankResponse> {
  CheckAccountBankResponseMapper._();

  static CheckAccountBankResponseMapper? _instance;
  static CheckAccountBankResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = CheckAccountBankResponseMapper._());
      AccountNameMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CheckAccountBankResponse';

  static String? _$code(CheckAccountBankResponse v) => v.code;
  static const Field<CheckAccountBankResponse, String> _f$code =
      Field('code', _$code, opt: true);
  static AccountName? _$data(CheckAccountBankResponse v) => v.data;
  static const Field<CheckAccountBankResponse, AccountName> _f$data =
      Field('data', _$data, opt: true);

  @override
  final MappableFields<CheckAccountBankResponse> fields = const {
    #code: _f$code,
    #data: _f$data,
  };

  static CheckAccountBankResponse _instantiate(DecodingData data) {
    return CheckAccountBankResponse(
        code: data.dec(_f$code), data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static CheckAccountBankResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CheckAccountBankResponse>(map);
  }

  static CheckAccountBankResponse fromJsonString(String json) {
    return ensureInitialized().decodeJson<CheckAccountBankResponse>(json);
  }
}

mixin CheckAccountBankResponseMappable {
  String toJsonString() {
    return CheckAccountBankResponseMapper.ensureInitialized()
        .encodeJson<CheckAccountBankResponse>(this as CheckAccountBankResponse);
  }

  Map<String, dynamic> toJson() {
    return CheckAccountBankResponseMapper.ensureInitialized()
        .encodeMap<CheckAccountBankResponse>(this as CheckAccountBankResponse);
  }

  CheckAccountBankResponseCopyWith<CheckAccountBankResponse,
          CheckAccountBankResponse, CheckAccountBankResponse>
      get copyWith => _CheckAccountBankResponseCopyWithImpl(
          this as CheckAccountBankResponse, $identity, $identity);
  @override
  String toString() {
    return CheckAccountBankResponseMapper.ensureInitialized()
        .stringifyValue(this as CheckAccountBankResponse);
  }

  @override
  bool operator ==(Object other) {
    return CheckAccountBankResponseMapper.ensureInitialized()
        .equalsValue(this as CheckAccountBankResponse, other);
  }

  @override
  int get hashCode {
    return CheckAccountBankResponseMapper.ensureInitialized()
        .hashValue(this as CheckAccountBankResponse);
  }
}

extension CheckAccountBankResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CheckAccountBankResponse, $Out> {
  CheckAccountBankResponseCopyWith<$R, CheckAccountBankResponse, $Out>
      get $asCheckAccountBankResponse => $base
          .as((v, t, t2) => _CheckAccountBankResponseCopyWithImpl(v, t, t2));
}

abstract class CheckAccountBankResponseCopyWith<
    $R,
    $In extends CheckAccountBankResponse,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  AccountNameCopyWith<$R, AccountName, AccountName>? get data;
  $R call({String? code, AccountName? data});
  CheckAccountBankResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CheckAccountBankResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CheckAccountBankResponse, $Out>
    implements
        CheckAccountBankResponseCopyWith<$R, CheckAccountBankResponse, $Out> {
  _CheckAccountBankResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CheckAccountBankResponse> $mapper =
      CheckAccountBankResponseMapper.ensureInitialized();
  @override
  AccountNameCopyWith<$R, AccountName, AccountName>? get data =>
      $value.data?.copyWith.$chain((v) => call(data: v));
  @override
  $R call({Object? code = $none, Object? data = $none}) =>
      $apply(FieldCopyWithData(
          {if (code != $none) #code: code, if (data != $none) #data: data}));
  @override
  CheckAccountBankResponse $make(CopyWithData data) => CheckAccountBankResponse(
      code: data.get(#code, or: $value.code),
      data: data.get(#data, or: $value.data));

  @override
  CheckAccountBankResponseCopyWith<$R2, CheckAccountBankResponse, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CheckAccountBankResponseCopyWithImpl($value, $cast, t);
}

class AccountNameMapper extends ClassMapperBase<AccountName> {
  AccountNameMapper._();

  static AccountNameMapper? _instance;
  static AccountNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AccountNameMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AccountName';

  static String? _$accountName(AccountName v) => v.accountName;
  static const Field<AccountName, String> _f$accountName =
      Field('accountName', _$accountName, opt: true);

  @override
  final MappableFields<AccountName> fields = const {
    #accountName: _f$accountName,
  };

  static AccountName _instantiate(DecodingData data) {
    return AccountName(accountName: data.dec(_f$accountName));
  }

  @override
  final Function instantiate = _instantiate;

  static AccountName fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AccountName>(map);
  }

  static AccountName fromJsonString(String json) {
    return ensureInitialized().decodeJson<AccountName>(json);
  }
}

mixin AccountNameMappable {
  String toJsonString() {
    return AccountNameMapper.ensureInitialized()
        .encodeJson<AccountName>(this as AccountName);
  }

  Map<String, dynamic> toJson() {
    return AccountNameMapper.ensureInitialized()
        .encodeMap<AccountName>(this as AccountName);
  }

  AccountNameCopyWith<AccountName, AccountName, AccountName> get copyWith =>
      _AccountNameCopyWithImpl(this as AccountName, $identity, $identity);
  @override
  String toString() {
    return AccountNameMapper.ensureInitialized()
        .stringifyValue(this as AccountName);
  }

  @override
  bool operator ==(Object other) {
    return AccountNameMapper.ensureInitialized()
        .equalsValue(this as AccountName, other);
  }

  @override
  int get hashCode {
    return AccountNameMapper.ensureInitialized().hashValue(this as AccountName);
  }
}

extension AccountNameValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AccountName, $Out> {
  AccountNameCopyWith<$R, AccountName, $Out> get $asAccountName =>
      $base.as((v, t, t2) => _AccountNameCopyWithImpl(v, t, t2));
}

abstract class AccountNameCopyWith<$R, $In extends AccountName, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accountName});
  AccountNameCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AccountNameCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AccountName, $Out>
    implements AccountNameCopyWith<$R, AccountName, $Out> {
  _AccountNameCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AccountName> $mapper =
      AccountNameMapper.ensureInitialized();
  @override
  $R call({Object? accountName = $none}) => $apply(
      FieldCopyWithData({if (accountName != $none) #accountName: accountName}));
  @override
  AccountName $make(CopyWithData data) =>
      AccountName(accountName: data.get(#accountName, or: $value.accountName));

  @override
  AccountNameCopyWith<$R2, AccountName, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AccountNameCopyWithImpl($value, $cast, t);
}
