import 'package:flutter/material.dart';
import 'package:kriss/core/widgets/custom_divider.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPadding),
                CustomDivider(),
                SizedBox(height: kTopPadding),
                Row(
                  children: [
                    Image.asset(Assets.imagesSale, height: 20, width: 20),
                    // Text(
                    //   'خصم 50% علي اسعار الفواكه بمناسبه العيد',
                    //   style: TextStyles.semiBold16,
                    // ),
                    // Text(
                    //   '9 صباحاً',
                    //   style: TextStyles.semiBold16.copyWith(
                    //     color: AppColors.hintTextColor,
                    //   ),
                    // ),
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
