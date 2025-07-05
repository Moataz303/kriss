import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constants.dart';
import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundImage,
    required this.isVisible,
  });
  final Widget title;
  final String subtitle, image, backgroundImage;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    image,
                    // Optional: you can adjust the size
                    width: 150,
                    height: 180,
                  ),
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingViewSeen, true);

                    Navigator.of(
                      context,
                    ).pushReplacementNamed(LoginView.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('تخط', style: TextStyles.regular13),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5456)),
          ),
        ),
      ],
    );
  }
}
