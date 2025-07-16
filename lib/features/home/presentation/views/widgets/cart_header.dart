import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_state.dart';
import 'cart_items_list.dart';
import 'package:intl/intl.dart';


class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final arabicNumber = NumberFormat.decimalPattern('ar_EG').format(
        cartItems.length);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Color(0xFFEBF9F1)),
      child: Center(
        child: BlocBuilder<AuthCubit, AuthStates>(
            buildWhen: (previous, current) => current is CartItemsCountState,
          builder: (BuildContext context, AuthStates state) {
            return Text(
              'لديك $arabicNumber قطع في السلة',
              style: TextStyles.regular16.copyWith(color: Color(0xFF1B5E37)),
            );
          },
        ),
      ),
    );
  }
}
