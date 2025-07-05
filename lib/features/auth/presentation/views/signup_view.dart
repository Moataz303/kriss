import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../cubits/auth_cubit/auth_cubit.dart';
import 'widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SignupViewBody(),
      ),
    );
  }
}
