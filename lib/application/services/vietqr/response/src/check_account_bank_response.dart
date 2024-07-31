import 'package:dart_mappable/dart_mappable.dart';

part 'check_account_bank_response.mapper.dart';

@MappableClass()
class CheckAccountBankResponse with CheckAccountBankResponseMappable {
  const CheckAccountBankResponse({
    this.code,
    this.data,
  });

  factory CheckAccountBankResponse.fromJson(Map<String, dynamic> json) =>
      CheckAccountBankResponseMapper.fromJson(json);

  final String? code;
  final AccountName? data;
}

@MappableClass()
class AccountName with AccountNameMappable {
  const AccountName({
    this.accountName,
  });

  factory AccountName.fromJson(Map<String, dynamic> json) =>
      AccountNameMapper.fromJson(json);

  final String? accountName;
}
