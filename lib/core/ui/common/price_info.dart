// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/data/variables.dart';
import 'package:grocery_app/core/domain/entity/product.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'app_sizes.dart';
import 'price_with_discount.dart';

class PriceInfo extends StatelessWidget {
  final Product item;
  final int quantity;
  final EdgeInsetsGeometry? padding;

  const PriceInfo({
    super.key,
    required this.item,
    required this.quantity,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSizes.p0,
      child: Row(
        children: [
          PriceWithDiscount(
            price: item.price,
            discountPrice: item.priceWithDiscount,
            currency: currency,
            style: context.appTheme?.text.w600s12cSignatures.copyWith(
              color: context.appTheme?.colors.textBlack,
            ),
          ),
          const SizedBox(
            width: AppSizes.sp4,
          ),
          Text(
            item.priceDescription,
            style: context.appTheme?.text.w400s11cSignatures,
          ),
        ],
      ),
    );
  }
}
