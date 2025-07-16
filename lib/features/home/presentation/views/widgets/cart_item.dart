import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/models/one_item_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'cart_item_action_buttons.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.oneItem});

  final ItemModel oneItem;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: BoxDecoration(color: Color(0xFFF3F5F7)),
            child: Image.asset(oneItem.image ?? ''),
          ),
          SizedBox(width: 17),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      oneItem.itemName ?? '',
                      style: TextStyles.bold16.copyWith(
                        color: Color(0xFF0C0D0D),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.imagesTrash),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    CartItemActionButtons(itemId: oneItem.itemCode ?? 0),
                    Spacer(),
                    Text(
                      '${oneItem.price.toString() ?? ''} جنية',
                      style: TextStyles.bold16.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
