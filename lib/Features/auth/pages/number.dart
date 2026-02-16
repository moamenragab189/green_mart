import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/functions/navigation.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/main_custom_button.dart';
import 'package:green_mart/Features/auth/pages/verification.dart';
import 'package:green_mart/Core/widgets/custom_form_field.dart';

class Number extends StatelessWidget {
  const Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter your mobile number', style: TextStyles.title),
              SizedBox(height: 7),
              Text(
                'We need to verify you. We will send you a one time verification code.',
                style: TextStyles.body.copyWith(color: AppColor.gray),
              ),
              SizedBox(height: 47),
              CustomFormField(
                texthint: '01xxxxxxxxxx',
                keyboard: TextInputType.numberWithOptions(),
              ),
              SizedBox(height: 47),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: MainCustomButton(
                  text: 'Next',
                  onpress: () {
                    pushReplacment(context, Verification());
                  },
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Text(
                  'Resend confirmation code (1:23)',
                  style: TextStyles.subtitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
