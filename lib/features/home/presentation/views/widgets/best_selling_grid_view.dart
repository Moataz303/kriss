import 'package:flutter/material.dart';
import '../../../../../core/widgets/fruit _tem.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163/325,
        mainAxisSpacing: 8,
        crossAxisSpacing: 18,
      ),
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
