import 'package:flutter/material.dart';
import 'package:multiverselanguageschool/constants/color.dart';
import 'package:multiverselanguageschool/constants/constant.dart';
import 'package:multiverselanguageschool/constants/image_path.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds, then navigate to HomeScreen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(
          context, '/onboarding'); // Navigate to the second screen
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen height using MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // Gradient Background
          gradient: LinearGradient(
            colors: [
              Colors.white,
              AppColors.lightRed
            ], // Customize gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.35),
            // Logo Image
            Image.asset(AppImages.mlsLogo, width: 150, height: 150),
            SizedBox(height: screenHeight * 0.3),

            // Text below the logo
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  textAlign: TextAlign.center,
                  AppStrings.mlsSlogan,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
