import 'package:flutter/material.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Features/explore/data/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 171,
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(16.5),
        border: Border.all(color: category.borderColor!),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(category.image ?? ' ')),
          Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Text(
              category.title ?? '',
              style: TextStyles.subtitle.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
