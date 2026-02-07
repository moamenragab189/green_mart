import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/Core/constants/app_assets.dart';
import 'package:green_mart/Core/functions/navigation.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/custom_svg.dart';
import 'package:green_mart/Core/widgets/main_custom_button.dart';
import 'package:green_mart/Features/auth/pages/login.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.welcom,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 100,
            left: 30,
            right: 30,
            child: Column(
              children: [
                CustomSvg(path: AppAssets.carrotSvg, color: Colors.white),
                SizedBox(height: 35),
                Text(
                  'welcom\nto our store',
                  style: TextStyles.headline.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyles.body.copyWith(color: AppColor.gray),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 58,
                  width: double.infinity,
                  child: MainCustomButton(
                    textstyle: TextStyles.button.copyWith(color: Colors.white),
                    text: 'Get Started',
                    onpress: () {
                      push(context, Login());
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
