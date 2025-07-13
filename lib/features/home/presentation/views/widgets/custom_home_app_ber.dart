import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/notification_widget.dart';
import '../notification_view.dart';

class CustomHomeAppBer extends StatelessWidget {
  const CustomHomeAppBer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, NotificationView.routeName);
        },
        child: NotificationWidget(),
      ),
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        'صباح الخير..!',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(
          color: AppColors.lightPrimaryColor,
        ),
      ),
      subtitle: Text(
        'معتز جارحى',
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
