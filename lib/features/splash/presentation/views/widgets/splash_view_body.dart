import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../auth/presentation/views/login_view.dart';
import '../../../../on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Image(image: AssetImage(Assets.imagesLogoWhiteMode)));
  }

  void excuteNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 2), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
