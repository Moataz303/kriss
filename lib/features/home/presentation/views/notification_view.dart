import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/notification_widget.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: NotificationWidget(),
        ),
        title: 'الاشعارات',
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: NotificationViewBody(),
    );
  }
}
