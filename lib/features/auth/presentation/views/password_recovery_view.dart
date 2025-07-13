import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/password_recovery_view_body.dart';

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({super.key});
  static const routeName = 'password-recovery';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'التحقق من الرمز',
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: PasswordRecoveryViewBody(),
    );
  }
}
