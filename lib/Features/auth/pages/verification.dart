import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/functions/navigation.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/main_custom_button.dart';
import 'package:green_mart/Features/Main/Main_Screen.dart';
import 'package:green_mart/Core/widgets/custom_form_field.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

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
              Text('Enter verification code', style: TextStyles.title),
              SizedBox(height: 7),
              Text(
                'We have sent SMS to: 01XXXXXXXXXX',
                style: TextStyles.body.copyWith(color: AppColor.gray),
              ),
              SizedBox(height: 47),
              // pinput
              Pinput(
                keyboardType: TextInputType.numberWithOptions(),

                length: 6,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 56,
                  textStyle: TextStyles.title,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.gray),
                    color: Color(0xffF0F1F2),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Resend OTP',
                    style: TextStyles.body.copyWith(color: AppColor.error),
                  ),
                  Text(
                    'Change Phone Number',
                    style: TextStyles.body.copyWith(color: AppColor.gray),
                  ),
                ],
              ),

              SizedBox(height: 47),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: MainCustomButton(
                  text: 'Next',
                  onpress: () {
                    pushReplacment(context, MainScreen());
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
