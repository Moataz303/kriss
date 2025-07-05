import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../cubits/auth_cubit/auth_cubit.dart';
import '../../cubits/auth_cubit/auth_state.dart';
import 'have_an_account_widget.dart';
import 'terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool isVisibil = false;


  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              controller: _nameController,
              hintText: 'الاسم بالكامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              controller: _emailController,
              hintText: 'البريد الإلكترونى',
              textInputType: TextInputType.emailAddress,
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
                      context.read<AuthCubit>().changePasswordVisibility();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            const SizedBox(height: 26),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
