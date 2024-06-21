import 'package:dart_mappable/dart_mappable.dart';

part 'payment_link_request.mapper.dart';

@MappableClass()
class PaymentLinkRequest with PaymentLinkRequestMappable {
  const PaymentLinkRequest({
    this.questionId,
  });

  factory PaymentLinkRequest.fromJson(Map<String, dynamic> json) =>
      PaymentLinkRequestMapper.fromJson(json);
  final String? questionId;
}
