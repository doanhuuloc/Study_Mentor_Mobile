import 'package:intl/intl.dart';

String formatCurrency(double cost) {
  final currencyFormatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');
  return currencyFormatter.format(cost);
}
