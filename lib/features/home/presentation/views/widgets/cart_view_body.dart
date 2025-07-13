import 'package:flutter/material.dart';
import 'package:kriss/core/widgets/custom_button.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_divider.dart';
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
                children: [
                  SizedBox(height: kTopPadding),
                  buildAppBar(context, title: "السلة", showBack: false),

                  SizedBox(height: kTopPadding),
                  CartHeader(),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SliverToBoxAdapter(child: CustomDivider()),
            CartItemsList(),
            SliverToBoxAdapter(child: CustomDivider()),
          ],
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: MediaQuery.sizeOf(context).height * 0.001,
          child: CustomButton(onPressed: () {}, text: 'الدفع ١٥٠٠ جنية'),
        ),
      ],
    );
  }
}
