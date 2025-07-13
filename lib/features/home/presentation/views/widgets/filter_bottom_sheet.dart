import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_cubit.dart';
import '../../../../auth/presentation/cubits/auth_cubit/auth_state.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  final List<String> options = const [
    'السعر ( الأقل الى الأعلى )',
    'السعر ( الأعلى الى الأقل )',
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
                  color: const Color(0xFF131f46),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(
              'ترتيب حسب :',
              textAlign: TextAlign.right,
              style: TextStyles.bold16,
            ),
            const SizedBox(height: 12),

            BlocBuilder<AuthCubit, AuthStates>(
              builder: (context, state) {
                final selectedOption = AuthCubit.get(
                  context,
                ).selectedFilterOption;

                return Column(
                  children: options.map((option) {
                    return RadioListTile<String>(
                      value: option,
                      activeColor: AppColors.primaryColor,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        AuthCubit.get(context).filterBottom(value);
                      },
                      title: Text(
                        option,
                        textAlign: TextAlign.right,
                        style: TextStyles.bold13,
                      ),
                      contentPadding: EdgeInsets.zero,
                    );
                  }).toList(),
                );
              },
            ),

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
              child: Text(
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
