import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/services/setup_git_it.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../cubits/auth_cubit/auth_cubit.dart';
import '../../cubits/auth_cubit/auth_state.dart';
import '../forgot_password_view.dart';
import 'dont_have_an_account_widget.dart';
import 'or_divider.dart';
import 'social_login_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isVisibil = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthCubit _signupCubit = getIt<AuthCubit>();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكترونى',
              textInputType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            const SizedBox(height: 16),
            BlocBuilder<AuthCubit, AuthStates>(
              buildWhen: (previous, current) =>
                  current is ChangePasswordVisibilityState,
              builder: (context, state) {
                return CustomTextFormField(
                  controller: _passwordController,
                  obscureText: isVisibil == true ? false : true,
                  hintText: 'كلمة المرور',
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: InkWell(
                    child: isVisibil == true
                        ? Icon(Icons.remove_red_eye, color: Color(0xffC9CECF))
                        : Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
                    onTap: () {
                      isVisibil = !isVisibil;
                      _signupCubit.changePasswordVisibility();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                              context,
                              ForgotPasswordView.routeName,
                            );
                          },
                        text: 'نسيت كلمة المرور؟ ',
                        style: TextStyles.semiBold13.copyWith(
                          color: AppColors.lightPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeView.routeName);
              },
              text: 'تسجيل دخول',
            ),
            const SizedBox(height: 33),
            const DontHaveAnAccountWidget(),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesAppleIcon,
              title: 'تسجيل بواسطة أبل',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
