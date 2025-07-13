import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String? selectedOption;

  final List<String> options = [
    'السعر ( الأقل الي الأعلى )',
    'السعر ( الأعلى الي الأقل )',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 60,
                height: 2,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Color(0xFF131f46),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(textAlign: TextAlign.right,
                'ترتيب حسب :',
                style: TextStyles.bold16
            ),
            const SizedBox(height: 12),
            ...options.map((option) {
              return RadioListTile<String>(
                value: option,
                activeColor: AppColors.primaryColor,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                },
                title: Text(
                  option,
                  textAlign: TextAlign.right,
                  style:  TextStyles.bold13,
                ),
                contentPadding: EdgeInsets.zero,
              );
            }).toList(),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child:  Text(
                'تصفيه',
                style: TextStyles.bold16.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
