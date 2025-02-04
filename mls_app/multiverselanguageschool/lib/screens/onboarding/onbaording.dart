import 'package:flutter/material.dart';
import 'package:multiverselanguageschool/constants/color.dart';
import 'package:multiverselanguageschool/constants/constant.dart';
import 'package:multiverselanguageschool/constants/image_path.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor, // Light pink background
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        AppStrings.upgradeYour,
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.primaryBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        AppStrings.languageSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.lightRed,
                          fontWeight: FontWeight.bold,
                          height: 0.9,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        AppStrings.mlsSloganWithoutDash,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.darkBlue,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 300,
                        child: Image.asset(
                          AppImages.onboarding,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 40),
                      _buildButton(    () {
      // Action when button is pressed: Navigate to the second screen
      Navigator.pushNamed(context, '/signIn');  // Or any route you want
    }
, AppStrings.signIn, AppColors.orange,
                          AppColors.darkBlue, context),
                      const SizedBox(height: 16),
                      _buildButton(    () {
      // Action when button is pressed: Navigate to the second screen
      Navigator.pushNamed(context, '/signUp');  // Or any route you want
    },
AppStrings.createAccount, AppColors.lightRed,
                          AppColors.whiteColor, context),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(VoidCallback ontap, String text, Color backgroundColor, Color textColor,
      BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
