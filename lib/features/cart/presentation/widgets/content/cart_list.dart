part of '../cart_screen.dart';

class _CartList extends StatelessWidget {
  final bool isLoading;
  final List<Product> items;
  final Map<int, int> quantities;
  final String currency;
  final double cartPrice;
  final double cartPriceWithoutDiscount;
  final double discount;
  final double deliveryPrice;
  final double totalPrice;
  final double minOrderPrice;
  final bool isReadyToOrder;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;
  final ValueChanged<Product> onFavoriteTap;
  final ValueChanged<Product> onTap;

  const _CartList({
    required this.isLoading,
    required this.items,
    required this.quantities,
    required this.currency,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.onFavoriteTap,
    required this.onTap,
    required this.cartPrice,
    required this.cartPriceWithoutDiscount,
    required this.discount,
    required this.deliveryPrice,
    required this.totalPrice,
    required this.isReadyToOrder,
    required this.minOrderPrice,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container()
        : _CartListLoaded(
            items: items,
            quantities: quantities,
            currency: currency,
            onIncreaseTap: onIncreaseTap,
            onDecreaseTap: onDecreaseTap,
            onFavoriteTap: onFavoriteTap,
            onTap: onTap,
            cartPrice: cartPrice,
            cartPriceWithoutDiscount: cartPriceWithoutDiscount,
            discount: discount,
            deliveryPrice: deliveryPrice,
            totalPrice: totalPrice,
            isReadyToOrder: isReadyToOrder,
            minOrderPrice: minOrderPrice,
          );
  }
}

class _CartListLoaded extends StatelessWidget {
  final List<Product> items;
  final Map<int, int> quantities;
  final String currency;
  final double cartPrice;
  final double cartPriceWithoutDiscount;
  final double discount;
  final double deliveryPrice;
  final double totalPrice;
  final double minOrderPrice;
  final bool isReadyToOrder;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;
  final ValueChanged<Product> onFavoriteTap;
  final ValueChanged<Product> onTap;

  const _CartListLoaded({
    required this.items,
    required this.quantities,
    required this.currency,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.onFavoriteTap,
    required this.onTap,
    required this.cartPrice,
    required this.cartPriceWithoutDiscount,
    required this.discount,
    required this.deliveryPrice,
    required this.totalPrice,
    required this.isReadyToOrder,
    required this.minOrderPrice,
  });

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? Container()
        : Column(
            children: [
              Flexible(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: AppSizes.ph16v4,
                        child: Text(
                          S.current.cartItems,
                          style: context.appTheme?.text.w600s16cMain,
                        ),
                      ),
                    ),
                    SliverList.separated(
                      itemCount: items.length,
                      itemBuilder: (ctx, index) {
                        final item = items[index];
                        return _CartItem(
                          item: item,
                          onTap: onTap,
                          currency: currency,
                          padding: AppSizes.ph16,
                          onFavoriteTap: onFavoriteTap,
                          quantity: quantities[item.id] ?? 0,
                          onIncreaseTap: onIncreaseTap,
                          onDecreaseTap: onDecreaseTap,
                        );
                      },
                      separatorBuilder: (ctx, index) =>
                          Divider(color: context.appTheme?.colors.divider),
                    )
                  ],
                ),
              ),
              _CartPrice(
                currency: currency,
                cartPrice: cartPrice,
                cartPriceWithoutDiscount: cartPriceWithoutDiscount,
                discount: discount,
                deliveryPrice: deliveryPrice,
                totalPrice: totalPrice,
                isReadyToOrder: isReadyToOrder,
                minOrderPrice: minOrderPrice,
              ),
            ],
          );
  }
}

class _CartPrice extends StatelessWidget {
  final String currency;
  final double cartPrice;
  final double cartPriceWithoutDiscount;
  final double discount;
  final double deliveryPrice;
  final double totalPrice;
  final bool isReadyToOrder;
  final double minOrderPrice;

  const _CartPrice({
    required this.currency,
    required this.cartPrice,
    required this.cartPriceWithoutDiscount,
    required this.discount,
    required this.deliveryPrice,
    required this.totalPrice,
    required this.isReadyToOrder,
    required this.minOrderPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.ph16v8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            color: context.appTheme?.colors.divider,
          ),
          Text(
            S.current.orderPrice,
            style: context.appTheme?.text.w600s16cMain,
          ),
          const SizedBox(
            height: AppSizes.sp8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.current.amount,
                style: context.appTheme?.text.w600s14cSignatures,
              ),
              Text(
                formatPrice(context, cartPriceWithoutDiscount, currency),
                style: context.appTheme?.text.w600s14cSignatures,
              ),
            ],
          ),
          (minOrderPrice > cartPrice)
              ? Padding(
                  padding: AppSizes.pt4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.current.minOrderPrice,
                        style: context.appTheme?.text.w600s14cSignatures
                            .copyWith(color: context.appTheme?.colors.warning),
                      ),
                      Text(
                        formatPrice(context, minOrderPrice, currency),
                        style: context.appTheme?.text.w600s14cSignatures
                            .copyWith(color: context.appTheme?.colors.warning),
                      ),
                    ],
                  ),
                )
              : Container(),
          (cartPriceWithoutDiscount - cartPrice > 0)
              ? Padding(
                  padding: AppSizes.pt4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.current.discount,
                        style: context.appTheme?.text.w600s14cSignatures,
                      ),
                      Text(
                        formatPrice(context, cartPrice - cartPriceWithoutDiscount, currency),
                        style: context.appTheme?.text.w600s14cSignatures,
                      ),
                    ],
                  ),
                )
              : Container(),
          const SizedBox(
            height: AppSizes.sp4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.current.delivery,
                style: context.appTheme?.text.w600s14cSignatures,
              ),
              Text(
                formatPrice(context, deliveryPrice, currency),
                style: context.appTheme?.text.w600s14cSignatures,
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.sp4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.current.totalPrice,
                style: context.appTheme?.text.w600s14cMain,
              ),
              Text(
                formatPrice(context, totalPrice, currency),
                style: context.appTheme?.text.w600s14cMain,
              ),
            ],
          ),
          AppButton(
            padding: AppSizes.pt8,
            title: S.current.checkout,
            enabled: isReadyToOrder,
          )
        ],
      ),
    );
  }
}
