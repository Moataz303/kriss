import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kriss/core/widgets/custom_button.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_divider.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_state.dart';
import 'cart_header.dart';
import 'cart_items_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                spacing: kTopPadding ,
                children: [
                  buildAppBar(context, title: "السلة", showBack: false),
                  CartHeader(),
                ],
              ),
            ),
            SliverToBoxAdapter(child: CustomDivider()),
            CartItemsList(),
            SliverToBoxAdapter(child: CustomDivider()),
          ],
        ),
        BlocBuilder<AuthCubit, AuthStates>(
          buildWhen: (previous, current) => current is IncrementQuantityState || current is DecrementQuantityState,
          builder: (BuildContext context, AuthStates state) {
            final total = calculateTotalCartAmount();
            if (total == 0) {
              return const SizedBox.shrink();
            }
            return Positioned(
              left: 16,
              right: 16,
              bottom: MediaQuery.sizeOf(context).height * 0.001,
              child: CustomButton(
                  onPressed: () {},
                  text: 'الدفع ${total} جنية '
              ),
            );
          },
        )
      ],
    );
  }
}

int calculateTotalCartAmount() {
  int total = 0;
  for (var item in cartItems) {
    total += item.price! * item.qty!;
  }
  return total;
}