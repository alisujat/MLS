// lib/route_generator.dart
import 'package:flutter/material.dart';
import 'package:multiverselanguageschool/screens/auth/forgot_password.dart';
import 'package:multiverselanguageschool/screens/auth/login.dart';
import 'package:multiverselanguageschool/screens/auth/sign_up.dart';
import 'package:multiverselanguageschool/screens/onboarding/onbaording.dart';
import 'package:multiverselanguageschool/screens/splash/splash.dart';

// This function generates routes dynamically based on the name
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case '/onboarding':
      return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    case '/signIn':
      return MaterialPageRoute(builder: (_) => const SignInScreen());
    case '/forgotPassword':
      return MaterialPageRoute(builder: (_) => const ForgotPassword());
    case '/signUp':
      return MaterialPageRoute(
          builder: (_) =>
              const SignUpScreen()); // Define the SignUpScreen route
    default:
      return MaterialPageRoute(
          builder: (_) => const SplashScreen()); // Fallback route
  }
}
