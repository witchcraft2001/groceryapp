// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

String formatPrice(BuildContext context, double amount, String currencyCode) {
  NumberFormat numberFormat;
  var integer = amount.toInt();
  numberFormat = integer.toDouble() != amount
      ? NumberFormat.simpleCurrency(
          locale: Localizations.localeOf(context).toString(),
          name: currencyCode,
        )
      : NumberFormat.simpleCurrency(
          locale: Localizations.localeOf(context).toString(),
          name: currencyCode,
          decimalDigits: 0,
        );

  return numberFormat.format(amount);
}

String formatPriceWithoutCurrency(double amount) {
  var integer = amount.toInt();

  return integer.toDouble() != amount ? amount.toStringAsFixed(2) : integer.toString();
}
