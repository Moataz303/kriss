import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/reset_your_password_view_body.dart';

class ResetYourPasswordView extends StatelessWidget {
  const ResetYourPasswordView({super.key});
  static const routeName = 'reset-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'كلمة مرور جديدة'),
      body: ResetYourPasswordViewBody(),
    );
  }
}
