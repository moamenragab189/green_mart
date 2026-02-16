import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/constants/app_assets.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 5),
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xffF0F1F2)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Color(0xff555E58).withValues(alpha: 0.1),
                ),
              ],
            ),

            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Expanded(child: Image.asset(AppAssets.banana)),
                  SizedBox(height: 19),
                  Text(
                    'Banana',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '7pcs',
                    style: TextStyles.subtitle.copyWith(color: AppColor.gray),
                  ),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$4.99',
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      FloatingActionButton.small(
                        elevation: 0,
                        backgroundColor: AppColor.primary,
                        onPressed: () {},
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: 5,
      ),
    );
  }
}
