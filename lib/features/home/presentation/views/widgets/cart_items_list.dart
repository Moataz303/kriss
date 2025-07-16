import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/one_item_model.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_divider.dart';
import 'cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const CustomDivider(),
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CartItem(oneItem: cartItems[index],),
        );
      },
    );
  }
}

List<ItemModel> cartItems = [
  ItemModel(
    itemCode: 1,
    itemName: 'تي شيرت',
    itemLatinName: 'T-Shirt',
    qty: 1,
    price: 400,
    total: 400,
    image: Assets.imagesTShirtTest,
  ),
  ItemModel(
    itemCode: 2,
    itemName: 'بنطلون جينز',
    itemLatinName: 'Jeans',
    qty: 1,
    price: 500,
    total: 500,
    image: Assets.imagesPantalonJeansTest,
  ),
  ItemModel(
    itemCode: 3,
    itemName: 'جاكيت',
    itemLatinName: 'Jacket',
    qty: 1,
    price: 900,
    total: 900,
    image: Assets.imagesJacketTest,
  ),
];
