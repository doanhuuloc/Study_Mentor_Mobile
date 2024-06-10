import 'package:dart_mappable/dart_mappable.dart';


part 'calculate_price_request.mapper.dart';

@MappableClass()
class CalculatePriceRequest with CalculatePriceRequestMappable {
  const CalculatePriceRequest({
    required this.level,
    required this.numberOfStar,
    required this.timeFindTutor,
    this.voucherCode,
  });

  final String level;
  final int numberOfStar;
  final int timeFindTutor;
  final String? voucherCode;
}
