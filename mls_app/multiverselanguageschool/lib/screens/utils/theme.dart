import 'package:flutter/material.dart';
import 'package:multiverselanguageschool/constants/color.dart';

class CustomTheme {
  // Use the color constant from the AppColors class
  static ThemeData lightTheme() {
    return ThemeData(
      // Defining primary color
      primaryColor: AppColors.borderColor,

      // Defining the accent color
      hintColor: AppColors.borderColor, 

      // AppBar settings using borderColor
      appBarTheme: const AppBarTheme(
        color: AppColors.borderColor,
      ),

      // Defining the border color for input fields, buttons, etc.
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 2.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 2.0),
        ),
      ),

      // Button styles
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: AppColors.borderColor, // text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // Text Theme
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: Colors.black87,
          fontSize: 14,
        ),
        displayLarge: TextStyle(
          color: AppColors.borderColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: AppColors.borderColor,
          fontSize: 24,
        ),
      ),

      // Scaffold background color
      scaffoldBackgroundColor: Colors.grey[50],

      // Card background color (for example)
      cardColor: Colors.white,

      // ListTile theme customization
      listTileTheme: const ListTileThemeData(
        selectedColor: AppColors.borderColor,
        iconColor: AppColors.borderColor,
      ),
    );
  }
}
