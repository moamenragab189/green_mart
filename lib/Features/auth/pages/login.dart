import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/constants/app_assets.dart';
import 'package:green_mart/Core/functions/navigation.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/custom_svg.dart';
import 'package:green_mart/Core/widgets/main_custom_button.dart';
import 'package:green_mart/Features/auth/pages/signup.dart';
import 'package:green_mart/Core/widgets/custom_form_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CustomSvg(path: AppAssets.carrotSvg)),
              SizedBox(height: 40),
              Text('Login', style: TextStyles.title),
              SizedBox(height: 16),
              Text(
                'Enter your emails and password',
                style: TextStyles.subtitle.copyWith(color: AppColor.gray),
              ),
              SizedBox(height: 40),
              Text('Email'),
              SizedBox(height: 5.5),
              CustomFormField(texthint: 'example@gmail.com'),
              SizedBox(height: 12.5),
              Text('Password'),
              SizedBox(height: 5.5),
              CustomFormField(texthint: '*****************', scure: true),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.subtitle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: MainCustomButton(
                  text: 'Login',
                  onpress: () {
                    pushReplacment(context, SignUp());
                  },
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyles.title.copyWith(fontSize: 12),
                  ),
                  Text(
                    'Singup',
                    style: TextStyles.title.copyWith(
                      fontSize: 12,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
