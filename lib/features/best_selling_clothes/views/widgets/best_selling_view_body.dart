import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../home/presentation/views/widgets/products_grid_view.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('الأكثر مبيعاً', style: TextStyles.bold19)],
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
          ProductsGridView(),
        ],
      ),
    );
  }
}
