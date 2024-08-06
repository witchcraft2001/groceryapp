// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/util/price_formatter.dart';
import 'app_sizes.dart';

class PriceWithDiscount extends StatelessWidget {
  final double price;
  final double? discountPrice;
  final String currency;
  final TextStyle? style;

  const PriceWithDiscount({
    super.key,
    required this.price,
    this.discountPrice,
    required this.currency,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final discountStyle = style?.copyWith(
      color: context.appTheme?.colors.textOptional,
      decoration: TextDecoration.lineThrough,
    );
    return Row(
      children: [
        Text(
          formatPrice(context, price, currency),
          style: discountPrice != null ? discountStyle : style,
        ),
        discountPrice != null
            ? const SizedBox(
                width: AppSizes.sp4,
              )
            : Container(),
        discountPrice != null
            ? Text(
                formatPrice(context, discountPrice!, currency),
                style: style,
              )
            : Container(),
      ],
    );
  }
}
