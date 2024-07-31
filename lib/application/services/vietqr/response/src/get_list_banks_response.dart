import 'package:dart_mappable/dart_mappable.dart';

part 'get_list_banks_response.mapper.dart';

// @MappableClass()
// class GetListBankResponse with GetListBankResponseMappable {
//   const GetListBankResponse({
//     this.fileKey,
//     this.fileName,
//     this.url,
//   });

//   factory GetListBankResponse.fromJson(Map<String, dynamic> json) =>
//       GetListBankResponseMapper.fromJson(json);

//   final String? fileKey;
//   final String? fileName;
//   final String? url;
// }

@MappableClass()
class Bank with BankMappable {
  const Bank({
    this.id,
    this.bin,
    this.code,
    this.logo,
    this.lookupSupported,
    this.name,
    this.shortName,
    this.transferSupported,
  });

  factory Bank.fromJson(Map<String, dynamic> json) => BankMapper.fromJson(json);

  final String? id;
  final String? name;
  final String? code;
  final String? bin;
  final String? shortName;
  final String? logo;
  final String? transferSupported;
  final String? lookupSupported;
}
