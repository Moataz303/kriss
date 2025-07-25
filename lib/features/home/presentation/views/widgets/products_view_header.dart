import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'filter_bottom_sheet.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('٨ نتائج', textAlign: TextAlign.right, style: TextStyles.bold16),
        Spacer(),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              isScrollControlled: true,
              builder: (context) => const FilterBottomSheet(),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.10000000149011612),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0x66CACECE)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: SvgPicture.asset(Assets.imagesFilter2),
          ),
        ),
      ],
    );
  }
}
