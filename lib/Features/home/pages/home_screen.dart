import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/constants/app_assets.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/custom_form_field.dart';
import 'package:green_mart/Core/widgets/custom_svg.dart';
import 'package:green_mart/Features/home/widgets/custom_list_view.dart';
import 'package:green_mart/Features/home/widgets/home_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomSvg(
            path: AppAssets.logoSvg,
            color: AppColor.primary,
            hight: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSearchBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Exclusive Offer', style: TextStyles.title),
                  Text(
                    'see all',
                    style: TextStyles.subtitle.copyWith(
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomListView(),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Selling', style: TextStyles.title),
                  Text(
                    'see all',
                    style: TextStyles.subtitle.copyWith(
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomListView(),
          ],
        ),
      ),
    );
  }
}
