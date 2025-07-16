import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/notification_widget.dart';
import 'widgets/notification_list.dart';
import 'widgets/notification_view_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  static const routeName = 'notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        actions: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: NotificationWidget(),
        ),
        title: 'الاشعارات',
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: kHorizontalPadding)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Text(
                "تحديد الكل مقروء",
                style: TextStyles.semiBold16.copyWith(
                  color: AppColors.hintTextColor,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 22)),
          NotificationList(),
          SliverToBoxAdapter(child: SizedBox(height: 22)),
        ],
      ),
    );
  }
}
