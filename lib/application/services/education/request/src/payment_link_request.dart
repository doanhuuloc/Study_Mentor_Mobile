import 'package:dart_mappable/dart_mappable.dart';

import '../../dto/enum.dart';

part 'payment_link_request.mapper.dart';

@MappableClass()
class PaymentLinkRequest with PaymentLinkRequestMappable {
  const PaymentLinkRequest({
    this.questionId,
    required this.type,
    this.expirationDateType,
  });

  factory PaymentLinkRequest.fromJson(Map<String, dynamic> json) =>
      PaymentLinkRequestMapper.fromJson(json);
  final String? questionId;
  final int type;
  final ExpirationDateType? expirationDateType;
}
