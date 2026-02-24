import 'package:flutter/material.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Features/details/pages/details.dart';

class ProductdetailsSection extends StatelessWidget {
  const ProductdetailsSection({super.key, required this.widget});

  final Details widget;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        title: Text(
          'Product Detail',
          style: TextStyles.title2.copyWith(fontSize: 14),
        ),
        children: [
          Text(
            widget.model.detailedDescription ?? '',
            style: TextStyles.body2.copyWith(color: AppColor.gray),
          ),
        ],
      ),
    );
  }
}
