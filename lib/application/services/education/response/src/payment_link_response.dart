import 'package:dart_mappable/dart_mappable.dart';

part 'payment_link_response.mapper.dart';

@MappableClass()
class PaymentLinkResponse with PaymentLinkResponseMappable {
  const PaymentLinkResponse({
    this.checkoutUrl,
  });

  factory PaymentLinkResponse.fromJson(Map<String, dynamic> json) =>
      PaymentLinkResponseMapper.fromJson(json);
  final String? checkoutUrl;
}
