import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/email_verification_code.dart';
import '../reset_your_password_view.dart';

class PasswordRecoveryViewBody extends StatefulWidget {
  const PasswordRecoveryViewBody({super.key});

  @override
  State<PasswordRecoveryViewBody> createState() =>
      _PasswordRecoveryViewBodyState();
}

class _PasswordRecoveryViewBodyState extends State<PasswordRecoveryViewBody> {
  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();
  final FocusNode _thirdFocusNode = FocusNode();
  final FocusNode _fourthFocusNode = FocusNode();

  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'ادخل الرمز الذى أرسلناه',
              style: TextStyles.semiBold16.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
          ),
          const SizedBox(height: 20),

          Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              spacing: 15,
              children: [
                EmailVerificationCode(
                  controller: _firstController,
                  firstFocusNode: _firstFocusNode,
                  secondFocusNode: _secondFocusNode,
                ),
                EmailVerificationCode(
                  controller: _secondController,
                  firstFocusNode: _secondFocusNode,
                  secondFocusNode: _thirdFocusNode,
                ),
                EmailVerificationCode(
                  controller: _thirdController,
                  firstFocusNode: _thirdFocusNode,
                  secondFocusNode: _fourthFocusNode,
                ),
                EmailVerificationCode(controller: _fourthController, firstFocusNode: _fourthFocusNode),
              ],
            ),
          ),
          const SizedBox(height: 30),

          CustomButton(
            onPressed: () {
               Navigator.pushNamed(context, ResetYourPasswordView.routeName);
            },
            text: 'تحقق من الرمز',
          ),
          const SizedBox(height: 16),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: 'إعادة ارسال الرمز',
                  style: TextStyles.semiBold16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
