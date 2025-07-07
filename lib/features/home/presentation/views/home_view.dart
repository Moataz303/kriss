import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kriss/features/home/presentation/views/products_view.dart';

import '../../../auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import '../../../auth/presentation/cubits/auth_cubit/auth_state.dart';
import 'widgets/custom_bottom_navigation_bar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home_view';

  final List<Widget> screens = const [
    HomeViewBody(),
    ProductsView(),
    Center(child: Text('السلة')),
    Center(child: Text('حسابي')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
        child: BlocBuilder<AuthCubit, AuthStates>(
          buildWhen: (previous, current) => current is ChangeNavigationBarState,
          builder: (context, state) {
            final index = context.read<AuthCubit>().selectedIndex;
            return screens[index];
          },
        ),
      ),
    );
  }
}
