import 'package:dart_mappable/dart_mappable.dart';

part 'check_account_bank_request.mapper.dart';

@MappableClass()
class CheckAccountBankRequest with CheckAccountBankRequestMappable {
  const CheckAccountBankRequest({
    required this.bin,
    required this.accountNumber,
  });

  factory CheckAccountBankRequest.fromJson(Map<String, dynamic> json) =>
      CheckAccountBankRequestMapper.fromJson(json);

  final String bin;
  final String accountNumber;
}
