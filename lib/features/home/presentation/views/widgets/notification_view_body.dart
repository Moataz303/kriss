import 'package:flutter/material.dart';
import 'package:kriss/core/widgets/custom_divider.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/notification_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key, required this.notificationItem});

  final NotificationModel notificationItem ;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 59,
          height: 59,
          margin: const EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(notificationItem.notificationImage ?? ''),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationItem.notificationText ?? '',
                style: TextStyles.semiBold16,
              ),
            ],
          ),
        ),  const SizedBox(height: 4),
        Text(textAlign: TextAlign.right,
          notificationItem.notificationTime ?? '',
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.hintTextColor,
          ),
        ),
      ],
    );
  }
}
