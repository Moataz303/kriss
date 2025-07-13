import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  static const routeName = 'forgot-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'نسيان كلمة المرور',
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ForgotPasswordViewBody(),
    );
  }
}
