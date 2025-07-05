import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/password_recovery_view_body.dart';

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({super.key});
  static const routeName = 'password-recovery';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'التحقق من الرمز'),
      body: PasswordRecoveryViewBody(),
    );
  }
}
