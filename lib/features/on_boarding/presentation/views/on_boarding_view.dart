import 'package:flutter/material.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = 'onBoardingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingViewBody());
  }
}
