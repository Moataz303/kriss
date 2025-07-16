import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/notification_model.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_divider.dart';
import 'notification_view_body.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const CustomDivider(),
      itemCount: notificationItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: NotificationViewBody(notificationItem: notificationItem[index],),
        );
      },
    );
  }
}

List<NotificationModel> notificationItem = [
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "خصومات خاصة بمناسبة موسم الصيف 🌞",
    notificationTime: "منذ دقائق",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "اشترِ منتجين واحصل على الثالث مجانًا 🎁",
    notificationTime: "منذ 15 دقيقة",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "تخفيضات تصل إلى 50% على جميع المنتجات 🔥",
    notificationTime: "منذ 30 دقيقة",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "عرض خاص ليوم واحد فقط! ⏳",
    notificationTime: "منذ ساعة",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "عروض العيد بدأت الآن! 🎉",
    notificationTime: "منذ ساعتين",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "استلم طلبك الآن مع شحن مجاني 🚚",
    notificationTime: "منذ 3 ساعات",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "احصل على نقاط مضاعفة عند كل عملية شراء ⭐",
    notificationTime: "منذ 6 ساعات",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "وصلنا منتج جديد! اكتشفه الآن 🛍️",
    notificationTime: "منذ 9 ساعات",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "تم شحن طلبك بنجاح 📦",
    notificationTime: "منذ 12 ساعة",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "تمت إضافة طلب جديد ✅",
    notificationTime: "منذ يوم",
  ),
  NotificationModel(
    notificationImage: Assets.imagesSale,
    notificationText: "اشترك في نشرتنا البريدية لأحدث العروض ✉️",
    notificationTime: "منذ يومين",
  ),
];

