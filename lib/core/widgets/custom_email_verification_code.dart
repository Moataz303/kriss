import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class CustomEmailVerificationCode extends StatelessWidget {
  const CustomEmailVerificationCode({
    super.key,
    required this.controller,
    required this.textInputType,
    this.focusNode,
    this.nextFocusNode,
    this.isCenter,
    this.maxLength,
  });
  final TextEditingController controller;
  final TextInputType textInputType;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final bool? isCenter;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: textInputType,
      textAlign: isCenter == true ? TextAlign.center : TextAlign.start,
      maxLength: maxLength,
      onEditingComplete: () {
        if (maxLength != null) {
          if (controller.text.length == maxLength!) {
            FocusScope.of(context).nextFocus();
            controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: controller.text.length,
            );
          }
        } else {
          if (nextFocusNode != null) {
            nextFocusNode!.requestFocus();
          } else if (focusNode != null) {
            focusNode!.unfocus();
          }

        }
      },
      onChanged: (value) {
        if (maxLength != null && maxLength == value.length) {
          if (nextFocusNode != null) {
            nextFocusNode!.requestFocus();
          } else if (focusNode != null) {
            focusNode!.unfocus();
          }

        }
        controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: controller.text.length,
        );
      },
      onTap: () {
        controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: controller.text.length,
        );
      },
      onTapOutside: (event) {
        if (focusNode != null) {
          focusNode?.unfocus();
        }
      },
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor: Color(0xFFF9FAFA),
        border: buildDisabledBorder(),
        enabledBorder: buildDisabledBorder(),
        focusedBorder: buildBorder(),
        disabledBorder: buildDisabledBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: AppColors.secondaryColor),
    );
  }

  OutlineInputBorder buildDisabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(width: 1, color: AppColors.borderSideColor2),
    );
  }
}
