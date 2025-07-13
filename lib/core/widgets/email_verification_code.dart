import 'package:flutter/material.dart';
import 'custom_email_verification_code.dart';

class EmailVerificationCode extends StatelessWidget {
  const EmailVerificationCode({
    super.key,
    required this.firstFocusNode,
    this.secondFocusNode,
    required this.controller,
  });
  final FocusNode firstFocusNode;
  final FocusNode? secondFocusNode;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomEmailVerificationCode(
        controller: controller,
        focusNode: firstFocusNode,
        nextFocusNode: secondFocusNode,
        textInputType: TextInputType.phone,
        maxLength: 1,
        isCenter: true,
      ),
    );
  }
}
