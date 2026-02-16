import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/constants/app_assets.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/custom_svg.dart';
import 'package:green_mart/Features/home/pages/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;
  List<Widget> screen = [HomeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentindex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, -5),
              color: Color(0xff555E58).withValues(alpha: 0.1),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColor.primary,
          unselectedItemColor: AppColor.background,
          backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyles.body.copyWith(
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w600,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (index) => {
            setState(() {
              currentindex = index;
            }),
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.stor,
                color: currentindex == 0
                    ? AppColor.primary
                    : AppColor.background,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: CustomSvg(
                path: AppAssets.searchSvg,
                color: currentindex == 1
                    ? AppColor.primary
                    : AppColor.background,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: CustomSvg(
                path: AppAssets.carttSvg,
                color: currentindex == 2
                    ? AppColor.primary
                    : AppColor.background,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.fevorit,
                color: currentindex == 3
                    ? AppColor.primary
                    : AppColor.background,
              ),
              label: 'favourite',
            ),
            BottomNavigationBarItem(
              icon: CustomSvg(
                path: AppAssets.userSvg,
                color: currentindex == 4
                    ? AppColor.primary
                    : AppColor.background,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
