import 'package:dart_mappable/dart_mappable.dart';
part 'calculate_price_response.mapper.dart';

@MappableClass()
class CalculatePriceReponse with CalculatePriceReponseMappable {
  const CalculatePriceReponse({
    this.price,
    this.promoPrice,
  });

  factory CalculatePriceReponse.fromJson(Map<String, dynamic> json) =>
      CalculatePriceReponseMapper.fromJson(json);

  final double? price;
  final double? promoPrice;
}
