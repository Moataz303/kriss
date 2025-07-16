import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'page_view_item.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      int page = widget.pageController.page?.round() ?? 0;
      if (page != currentIndex) {
        setState(() {
          currentIndex = page;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final styles = [
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFFffdb98),
        statusBarIconBrightness: Brightness.dark,
      ),
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF727079),
        statusBarIconBrightness: Brightness.light,
      ),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: styles[currentIndex],
      child: SafeArea(
        child: PageView(
          controller: widget.pageController,
          children: [
            PageViewItem(
              isVisible: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('مرحباً بك في ', style: TextStyles.bold23),
                  Text(
                    'Kriss',
                    style: TextStyles.bold23.copyWith(
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
              subtitle:
                  'اكتشف تجربة تسوق فريدة مع Kriss. استكشف مجموعتنا الواسعة من الملابس واحصل علي افضل الاسعار والجودة العالية.',
              image: Assets.imagesOnlineShop,
              backgroundImage: Assets.imagesBackground1,
            ),
            PageViewItem(
              isVisible: false,
              subtitle:
                  'نقدم لك أفضل الملابس المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الملابس المثالية.',
              image: Assets.imagesTShirt,
              backgroundImage: Assets.imagesBackground2,
              title: Text(
                'ابحث وتسوق',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF0C0D0D),
                  fontFamily: 'Cairo',
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
