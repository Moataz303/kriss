import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/fruit _tem.dart';
import '../../../../../core/widgets/search_text_field.dart';
import 'Best_selling_header.dart';
import 'best_selling_grid_view.dart';
import 'custom_home_app_ber.dart';
import 'featured_item.dart';
import 'featured_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final TextEditingController _searchController = TextEditingController();

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
                CustomHomeAppBer(),
                SizedBox(height: kTopPadding),
                SearchTextField(controller: _searchController),
                SizedBox(height: 12),
                FeaturedList(),
                SizedBox(height: 12),
                BestSellingHeader(),
                SizedBox(height: 8),

              ],
            ),
          ),
          BestSellingGridView(),
        ],
      ),
    );
  }
}
