import 'package:dart_mappable/dart_mappable.dart';
part 'get_voucher_response.mapper.dart';

@MappableClass()
class VoucherReponse with VoucherReponseMappable {
  const VoucherReponse({
    this.code,
    this.percentage,
    this.endDate,
    this.quantity,
  });

  factory VoucherReponse.fromJson(Map<String, dynamic> json) =>
      VoucherReponseMapper.fromJson(json);

  final String? code;
  final String? percentage;
  final DateTime? endDate;
  final int? quantity;
}
