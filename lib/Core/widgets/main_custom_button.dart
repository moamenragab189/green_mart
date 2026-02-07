import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';

class MainCustomButton extends StatelessWidget {
  const MainCustomButton({
    super.key,
    this.color = AppColor.primary,
    required this.text,
    this.redius = 20,
    required this.onpress,
    this.textstyle = TextStyles.button,
  });
  final String text;
  final Color color;
  final double redius;
  final Function() onpress;
  final TextStyle? textstyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(redius),
        ),
      ),
      onPressed: onpress,
      child: Text(text, style: textstyle),
    );
  }
}
