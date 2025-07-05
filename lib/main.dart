import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'core/utils/app_colors.dart';
import 'core/services/setup_git_it.dart';
import 'features/auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'generated/l10n.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const Kriss());
}

class Kriss extends StatelessWidget {
  const Kriss({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => getIt<AuthCubit>(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          },
        ),
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale('ar'),
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.routeName,
      ),
    );
  }
}
