import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/Core/constants/app_assets.dart';
import 'package:green_mart/Core/functions/navigation.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Features/intro/welcom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      pushReplacment(context, WelcomScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(child: SvgPicture.asset(AppAssets.logoSvg)),
    );
  }
}
