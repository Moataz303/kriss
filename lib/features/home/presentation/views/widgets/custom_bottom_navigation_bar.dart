import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_state.dart';
import '../../../domain/entites/button_navigation_bar_entity.dart';
import 'navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.watch<AuthCubit>();
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: ButtonNavigationBarEntity.items.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: index == authCubit.selectedIndex ? 3 : 2,
            child: BlocBuilder<AuthCubit, AuthStates>(
              buildWhen: (previous, current) =>
                  current is ChangeNavigationBarState,
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context.read<AuthCubit>().changeNavigationBar(index);
                  },
                  child: NavigationBarItem(
                    isSelected: authCubit.selectedIndex == index,
                    buttonNavigationBarEntity: entity,
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
