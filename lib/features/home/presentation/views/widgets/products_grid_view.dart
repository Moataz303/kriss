import 'package:flutter/material.dart';
import '../../../../../core/widgets/featured _tem.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 340,
        mainAxisSpacing: 8,
        crossAxisSpacing: 18,
      ),
      itemBuilder: (context, index) {
        return FeaturedItem();
      },
    );
  }
}
