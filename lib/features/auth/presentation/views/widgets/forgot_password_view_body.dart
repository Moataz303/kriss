import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../password_recovery_view.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Text(
            'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            controller: _phoneController,
            hintText: 'رقم الهاتف',
            textInputType: TextInputType.phone,
          ),
          const SizedBox(height: 30),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, PasswordRecoveryView.routeName);
            },
            text: 'نسيت كلمة المرور',
          ),
        ],
      ),
    );
  }
}
