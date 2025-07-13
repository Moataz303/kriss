import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Color(0xFFEBF9F1)),
      child: Center(
        child: Text(
          'لديك ٣ قطع في السلة',
          style: TextStyles.regular16.copyWith(color: Color(0xFF1B5E37)),
        ),
      ),
    );
  }
}
