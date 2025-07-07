import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

AppBar buildAppBar(
  context, {
  required String title,
  Widget? actions,
  Widget? leading,
  bool showBack = true,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: leading,
    automaticallyImplyLeading: showBack,
    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
    actions: actions != null ? [actions] : null,
  );
}
