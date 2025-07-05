import '../../../../core/utils/app_images.dart';

class ButtonNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  ButtonNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });

  static List<ButtonNavigationBarEntity> get items => [
    ButtonNavigationBarEntity(
      activeImage: Assets.imagesBoldHome,
      inActiveImage: Assets.imagesOutlineHome,
      name: 'الرئيسية',
    ),
    ButtonNavigationBarEntity(
      activeImage: Assets.imagesBoldProduct,
      inActiveImage: Assets.imagesOutlineProduct,
      name: 'المنتجات',
    ),
    ButtonNavigationBarEntity(
      activeImage: Assets.imagesBoldShoppingCart,
      inActiveImage: Assets.imagesOutlineShoppingCart,
      name: 'السلة',
    ),
    ButtonNavigationBarEntity(
      activeImage: Assets.imagesBoldUser,
      inActiveImage: Assets.imagesOutlineUser,
      name: 'حسابي',
    ),
  ];
}
