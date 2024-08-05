part of '../catalog_screen.dart';

class _CategoryItem extends StatelessWidget {
  final Category item;
  final bool isSelected;
  final ValueChanged<Category> onTap;
  const _CategoryItem({required this.item, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(item),
      child: Padding(
        padding: AppSizes.p8,
        child: Column(
          children: [
            SvgPicture.asset(
              isSelected ? item.iconActive : item.iconInactive,
              width: AppSizes.categoryIcon,
              height: AppSizes.categoryIcon,
            ),
            Padding(
              padding: AppSizes.pt8,
              child: Text(
                item.name,
                style: context.appTheme?.text.w400s12cSignatures,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
