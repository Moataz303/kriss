import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_state.dart';
import 'cart_items_list.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key, required this.itemId});

  final int itemId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add,
          color: AppColors.addColor,
          onPressed: () {
            AuthCubit.get(context).increment(itemId);
          },
          iconColor: Colors.white,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: BlocBuilder<AuthCubit, AuthStates>(
            builder: (context, state) {
              final quantity = cartItems.where((item) => item.itemCode == itemId).first.qty ?? 0;
              return Text(
                NumberFormat.decimalPattern('ar_EG').format(quantity),
                style: TextStyles.bold16,
              );
            },
          ),
        ),

        CartItemActionButton(
          icon: Icons.remove,
          color: Color(0xFFF3F5F7),
          onPressed: () {
            AuthCubit.get(context).decrement(itemId);
          },
          iconColor: Colors.grey,
        ),
      ],
    );
  }
}

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
    required this.iconColor,
  });
  final IconData icon;
  final Color iconColor;
  final Color color;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24,
        height: 24,
        padding: const EdgeInsets.all(2),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: FittedBox(child: Icon(icon, color: iconColor)),
      ),
    );
  }
}
