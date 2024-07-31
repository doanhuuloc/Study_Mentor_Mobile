import 'package:dart_mappable/dart_mappable.dart';

part 'update_bank_info_request.mapper.dart';

@MappableClass()
class UpdateBankInfoRequest with UpdateBankInfoRequestMappable {
  const UpdateBankInfoRequest({
    required this.idOfBanking,
    required this.nameOfBanking,
    required this.numberOfBanking,
    required this.nameUserOfBanking,
  });

  factory UpdateBankInfoRequest.fromJson(Map<String, dynamic> json) =>
      UpdateBankInfoRequestMapper.fromJson(json);
  final String? nameOfBanking;
  final String? numberOfBanking;
  final String? idOfBanking;
  final String? nameUserOfBanking;
}
