import 'package:flutter/material.dart';
import '../../features/auth/presentation/views/forgot_password_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/password_recovery_view.dart';
import '../../features/auth/presentation/views/reset_your_password_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/best_selling_clothes/views/best_selling_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/notification_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../widgets/navigate_to_page_widget.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return NavigateToPageWidget(const SplashView());
    case OnBoardingView.routeName:
      return NavigateToPageWidget(const OnBoardingView());
    case LoginView.routeName:
      return NavigateToPageWidget(const LoginView());
    case SignupView.routeName:
      return NavigateToPageWidget(const SignupView());
    case ForgotPasswordView.routeName:
      return NavigateToPageWidget(const ForgotPasswordView());
    case ResetYourPasswordView.routeName:
      return NavigateToPageWidget(const ResetYourPasswordView());
    case PasswordRecoveryView.routeName:
      return NavigateToPageWidget(const PasswordRecoveryView());
    case HomeView.routeName:
      return NavigateToPageWidget(const HomeView());
    case BestSellingView.routeName:
      return NavigateToPageWidget(const BestSellingView());
    case NotificationView.routeName:
      return NavigateToPageWidget(const NotificationView());
    default:
      return NavigateToPageWidget(const Scaffold());
  }
}
