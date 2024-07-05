import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatCurrency(double cost, BuildContext context) {
  // final currencyFormatter = NumberFormat.currency(
  //     locale: context.read<LocaleCubit>().state.languageCode);
  final currencyFormatter = NumberFormat.currency(locale: "vi");

  return currencyFormatter.format(cost);
}
