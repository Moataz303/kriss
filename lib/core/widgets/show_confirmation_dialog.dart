import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_images.dart';
import '../utils/app_text_styles.dart';

void showConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: 250,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.imagesPasswordChangedSuccessfully,
                // Adjust the height as needed
              ),
              SizedBox(height: 16), // Add space between the image and text
              Text(
                'تم تغيير الباسورد بنجاح',
                style: TextStyles.bold16,
                textAlign: TextAlign.center, // Center the text
              ),
            ],
          ),
        ),
      );
    },
  );
}
