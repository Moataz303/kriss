import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../best_selling_clothes/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {Navigator.pushNamed(context, BestSellingView.routeName);},
      child: Row(
        children: [
          Text(
            'الأكثر مبيعاً',
            textAlign: TextAlign.right,
            style: TextStyles.bold16,
          ),
          Spacer(),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style: TextStyles.regular13.copyWith(color: AppColors.hintTextColor),
          ),
        ],
      ),
    );
  }
}
