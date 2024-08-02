import 'package:dart_mappable/dart_mappable.dart';

part 'payment.mapper.dart';

@MappableClass()
class Payment with PaymentMappable {
  const Payment({
    this.data,
  });
  factory Payment.fromJson(Map<String, dynamic> json) =>
      PaymentMapper.fromJson(json);
  final PaymentDetailed? data;
}

@MappableClass()
class PaymentDetailed with PaymentDetailedMappable {
  const PaymentDetailed({
    this.isPaidSuccess,
    this.type,
  });
  factory PaymentDetailed.fromJson(Map<String, dynamic> json) =>
      PaymentDetailedMapper.fromJson(json);
  final bool? isPaidSuccess;
  final int? type;
}
