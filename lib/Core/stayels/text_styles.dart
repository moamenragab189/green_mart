import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle headline = TextStyle(
    color: AppColor.background,
    fontFamily: "poppins",
    fontWeight: FontWeight.w600,
    fontSize: 48,
  );

  static const TextStyle title = TextStyle(
    color: AppColor.background,
    fontFamily: "poppins",
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );
  static const TextStyle subtitle = TextStyle(
    color: AppColor.background,
    fontFamily: "poppins",
    fontSize: 14,
  );
  static const TextStyle body = TextStyle(
    color: AppColor.background,
    fontFamily: "poppins",
    fontSize: 16,
  );

  static const TextStyle button = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
}
