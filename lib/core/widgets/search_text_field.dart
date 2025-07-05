import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_text_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon)),
          ),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.imagesFilter)),
          ),
          hintText: 'ابحث عن.......',
          hintStyle: TextStyles.regular13.copyWith(
            color: AppColors.hintTextColor,
          ),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: Colors.white),
    );
  }
}
