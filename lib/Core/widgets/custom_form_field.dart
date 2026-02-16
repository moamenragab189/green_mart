import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.radius = 20,
    required this.texthint,
    this.scure = false,
    this.keyboard,
    this.prefixIcon,
    this.enabled = true,
  });
  final double radius;
  final String texthint;
  final bool scure;
  final TextInputType? keyboard;
  final IconData? prefixIcon;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      obscureText: scure,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hint: Text(texthint),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.borderform),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: AppColor.borderform),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: AppColor.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: AppColor.error),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: AppColor.borderform),
        ),
      ),
    );
  }
}
