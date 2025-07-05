import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/show_confirmation_dialog.dart';
import '../../cubits/auth_cubit/auth_cubit.dart';
import '../../cubits/auth_cubit/auth_state.dart';

class ResetYourPasswordViewBody extends StatefulWidget {
  const ResetYourPasswordViewBody({super.key});

  @override
  State<ResetYourPasswordViewBody> createState() =>
      _ResetYourPasswordViewBodyState();
}

class _ResetYourPasswordViewBodyState extends State<ResetYourPasswordViewBody> {
  bool isVisibil = false;
  bool isConfirmVisibil = false;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
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
              'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
              style: TextStyles.semiBold16.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
          ),
          const SizedBox(height: 30),
          BlocBuilder<AuthCubit, AuthStates>(
            buildWhen: (previous, current) =>
                current is ChangePasswordVisibilityState,
            builder: (context, state) {
              return CustomTextFormField(
                controller: _passwordController,
                obscureText: isVisibil == true ? false : true,
                hintText: 'كلمة المرور الجديدة',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: InkWell(
                  child: isVisibil == true
                      ? Icon(Icons.remove_red_eye, color: Color(0xffC9CECF))
                      : Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
                  onTap: () {
                    isVisibil = !isVisibil;
                    context.read<AuthCubit>().changePasswordVisibility();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          BlocBuilder<AuthCubit, AuthStates>(
            buildWhen: (previous, current) =>
                current is ChangePasswordVisibilityState,
            builder: (context, state) {
              return CustomTextFormField(
                controller: _confirmPasswordController,
                obscureText: isConfirmVisibil == true ? false : true,
                hintText: 'إعادة كتابة كلمة المرور الجديدة',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: InkWell(
                  child: isConfirmVisibil == true
                      ? Icon(Icons.remove_red_eye, color: Color(0xffC9CECF))
                      : Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
                  onTap: () {
                    isConfirmVisibil = !isConfirmVisibil;
                    context.read<AuthCubit>().changePasswordVisibility();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          CustomButton(
            onPressed: () {
              showConfirmationDialog(context);
            },
            text: 'إنشاء كلمة مرور جديدة',
          ),
        ],
      ),
    );
  }
}
