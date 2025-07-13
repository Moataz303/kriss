import 'package:flutter/material.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ProductsCategoryList extends StatelessWidget {
  const ProductsCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFF3F5F7)),
                    image: const DecorationImage(
                      image: AssetImage(Assets.imagesTShirtTest),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const SizedBox(
                  width: 70,
                  child: Text(
                    "شتوى",
                    style: TextStyles.regular13,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
