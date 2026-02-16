import 'package:flutter/material.dart';
import 'package:green_mart/Core/constants/app_fonts.dart';
import 'package:green_mart/Features/intro/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
