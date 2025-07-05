import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(Assets.imagesTShirtTest),
                SizedBox(height: 16),
                ListTile(
                  title: Text(
                    'T-Shirt',
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: '500 جنية',
                      style: TextStyles.bold13.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.addColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
