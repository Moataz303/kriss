import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});


  static const routeName = 'forgot-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'نسيان كلمة المرور'),
      body: ForgotPasswordViewBody(),
    );
  }
}
