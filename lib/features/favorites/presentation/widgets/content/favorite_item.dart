part of '../favorites_screen.dart';

class _FavoriteItem extends StatelessWidget {
  final Product item;
  final int quantity;
  final String currency;
  final EdgeInsetsGeometry? padding;
  final ValueChanged<Product> onTap;
  final ValueChanged<Product> onRemoveFavoriteTap;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;

  const _FavoriteItem({
    required this.item,
    required this.onTap,
    required this.onRemoveFavoriteTap,
    required this.quantity,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    this.padding,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSizes.p0,
      child: SizedBox(
        height: AppSizes.favoritesItemHeight,
        child: Row(
          children: [
            NetworkImageWithShimmer(url: item.cover,
              height: AppSizes.productImageSize,
              width: AppSizes.productImageSize,
              padding: AppSizes.pr8,
              borderRadius: AppDecoration.brBtnSmall,
            ),
            // Container(
            //   padding: AppSizes.pr8,
            //   decoration: BoxDecoration(
            //     borderRadius: AppDecoration.brBtnSmall,
            //   ),
            //   height: AppSizes.productImageSize,
            //   width: AppSizes.productImageSize,
            //   child: CachedNetworkImage(imageUrl: item.cover),
            // ),
            Flexible(
              child: Padding(
                padding: AppSizes.pv8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: AppSizes.favoritesItemTitleHeight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: context.appTheme?.text.w600s14cSignatures
                                      .copyWith(color: context.appTheme?.colors.textContrast),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: AppSizes.sp2,
                                ),
                                Text(
                                  item.categoryName,
                                  style: context.appTheme?.text.w400s11cSignatures,
                                ),
                              ],
                            ),
                          ),
                          AppIconButton(
                            icon: AppAssets.iconClose,
                            foreground: context.appTheme?.colors.brAndIcons,
                            onTap: () => onRemoveFavoriteTap(item),
                          )
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RatingBar.readOnly(
                          isHalfAllowed: true,
                          halfFilledIcon: Icons.star_half,
                          filledIcon: Icons.star,
                          emptyIcon: Icons.star_border,
                          initialRating: item.rate,
                          size: AppSizes.sp16,
                          maxRating: 5,
                        ),
                        const SizedBox(
                          width: AppSizes.sp4,
                        ),
                        Text(
                          item.rate.toStringAsFixed(1),
                          style: context.appTheme?.text.w400s11cSignatures,
                        ),
                        item.ratesCount > 0
                            ? Text(
                                '(${item.ratesCount})',
                                style: context.appTheme?.text.w400s11cSignatures,
                              )
                            : Container(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PriceInfo(
                          item: item,
                          quantity: quantity,
                          currency: currency,
                        ),
                        SizedBox(
                          width: AppSizes.productItemWidth,
                          child: AddProductToCartButton(
                            key: ValueKey(item.id),
                            quantity: quantity,
                            quantityUnit: item.quantityUnit,
                            multiplicity: item.multiplicity,
                            onIncreaseTap: () => onIncreaseTap(item),
                            onDecreaseTap: () => onDecreaseTap(item),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
