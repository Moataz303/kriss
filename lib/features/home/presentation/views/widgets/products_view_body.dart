import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/notification_widget.dart';
import '../../../../../core/widgets/search_text_field.dart';
import 'products_category_list.dart';
import 'products_grid_view.dart';
import 'products_view_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
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
                buildAppBar(
                  context,
                  title: "المنتجات",
                  showBack: false,
                  actions: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: NotificationWidget(),
                  ),
                ),
                SizedBox(height: kTopPadding),
                SearchTextField(controller: _searchController),
                SizedBox(height: 12),
                ProductsCategoryList(),
                ProductsViewHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
          ProductsGridView(),
        ],
      ),
    );
  }
}
