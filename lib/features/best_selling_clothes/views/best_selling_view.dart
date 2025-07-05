import 'package:flutter/material.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/notification_widget.dart';
import 'widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = 'best-selling';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'الأكثر مبيعاً',
        actions: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: NotificationWidget(),
        ),
      ),
      body: BestSellingViewBody(),
    );
  }
}
