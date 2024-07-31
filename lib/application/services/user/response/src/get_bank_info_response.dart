import 'package:dart_mappable/dart_mappable.dart';

part 'get_bank_info_response.mapper.dart';

@MappableClass()
class GetBankInfoResponse with GetBankInfoResponseMappable {
  const GetBankInfoResponse({
    required this.idOfBanking,
    required this.nameOfBanking,
    required this.numberOfBanking,
    required this.nameUserOfBanking,
  });

  factory GetBankInfoResponse.fromJson(Map<String, dynamic> json) =>
      GetBankInfoResponseMapper.fromJson(json);
  final String? nameOfBanking;
  final String? numberOfBanking;
  final String? idOfBanking;
  final String? nameUserOfBanking;
}
