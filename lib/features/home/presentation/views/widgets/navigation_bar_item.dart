import 'package:flutter/material.dart';
import '../../../domain/entites/button_navigation_bar_entity.dart';
import 'active_item.dart';
import 'in_active_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.buttonNavigationBarEntity,
  });
  final bool isSelected;
  final ButtonNavigationBarEntity buttonNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: buttonNavigationBarEntity.activeImage,
            text: buttonNavigationBarEntity.name,
          )
        : InActiveItem(image: buttonNavigationBarEntity.inActiveImage);
  }
}
