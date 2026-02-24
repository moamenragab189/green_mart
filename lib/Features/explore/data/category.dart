import 'package:flutter/animation.dart';
import 'package:green_mart/Core/constants/app_assets.dart';

class CategoryModel {
  CategoryModel({this.image, this.title, this.borderColor, this.color});
  String? image;
  String? title;
  Color? color;
  Color? borderColor;
}

List<CategoryModel> categories = [
  CategoryModel(
    image: AppAssets.vegetable,
    title: 'Frash Fruits\n& Vegetable',
    color: Color(0xff53B175B2).withValues(alpha: 0.25),
    borderColor: Color(0xff53B175B2),
  ),
  CategoryModel(
    image: AppAssets.meet,
    title: 'Meat & Fish',
    color: Color(0xffF7A59340).withValues(alpha: 0.25),
    borderColor: Color(0xffF7A593),
  ),
  CategoryModel(
    image: AppAssets.bakery,
    title: 'Bakery & Snacks',
    color: Color(0xffD3B0E040).withValues(alpha: 0.25),
    borderColor: Color(0xffD3B0E0),
  ),
  CategoryModel(
    image: AppAssets.beverages,
    title: 'Beverages',
    color: Color(0xffB7DFF540).withValues(alpha: 0.25),
    borderColor: Color(0xffB7DFF5),
  ),
  CategoryModel(
    image: AppAssets.dairy,
    title: 'Dairy & Eggs',
    color: Color(0xffFDE59840).withValues(alpha: 0.25),
    borderColor: Color(0xffFDE598),
  ),
  CategoryModel(
    image: AppAssets.oil,
    title: 'Cooking Oil\n& Ghee',
    color: Color(0xffF8A44C1A).withValues(alpha: 0.1),
    borderColor: Color(0xffF8A44CB2),
  ),

  CategoryModel(
    image: AppAssets.meet,
    title: 'Meat & Fish',
    color: Color(0xffF7A59340).withValues(alpha: 0.25),
    borderColor: Color(0xffF7A593),
  ),
  CategoryModel(
    image: AppAssets.bakery,
    title: 'Bakery & Snacks',
    color: Color(0xffD3B0E040).withValues(alpha: 0.25),
    borderColor: Color(0xffD3B0E0),
  ),
  CategoryModel(
    image: AppAssets.beverages,
    title: 'Beverages',
    color: Color(0xffB7DFF540).withValues(alpha: 0.25),
    borderColor: Color(0xffB7DFF5),
  ),
  CategoryModel(
    image: AppAssets.dairy,
    title: 'Dairy & Eggs',
    color: Color(0xffFDE59840).withValues(alpha: 0.25),
    borderColor: Color(0xffFDE598),
  ),
  CategoryModel(
    image: AppAssets.oil,
    title: 'Cooking Oil\n& Ghee',
    color: Color(0xffF8A44C1A).withValues(alpha: 0.1),
    borderColor: Color(0xffF8A44CB2),
  ),
];
