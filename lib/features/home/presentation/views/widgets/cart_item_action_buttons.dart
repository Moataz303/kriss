import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CartItemActionButtons extends StatefulWidget {
  const CartItemActionButtons({super.key});

  @override
  State<CartItemActionButtons> createState() => _CartItemActionButtonsState();
}

class _CartItemActionButtonsState extends State<CartItemActionButtons> {
  int quantity = 0;

  void _increment() {
    setState(() {
      quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (quantity > 0) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add,
          color: AppColors.addColor,
          onPressed: _increment,
          iconColor: Colors.white,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Text(
            NumberFormat.decimalPattern('ar_EG').format(quantity),
            style: TextStyles.bold16,
          ),
        ),

        CartItemActionButton(
          icon: Icons.remove,
          color: Color(0xFFF3F5F7),
          onPressed: _decrement,
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
