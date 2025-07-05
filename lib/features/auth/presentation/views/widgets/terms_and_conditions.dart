import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../cubits/auth_cubit/auth_cubit.dart';
import '../../cubits/auth_cubit/auth_state.dart';
import 'custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<AuthCubit, AuthStates>(
          buildWhen: (previous, current) => current is ChangeCheckBoxState,
          builder: (context, state) {
            return CustomCheckBox(
              onChecked: (bool value) {
                isTermsAccepted = value;
                context.read<AuthCubit>().changeCheckBox();
              },
              isChecked: isTermsAccepted,
            );
          },
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب , فإنك توافق على ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
