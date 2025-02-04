import 'package:flutter/material.dart';
import 'package:multiverselanguageschool/route/app_route.dart';
import 'package:multiverselanguageschool/screens/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mulitiverse langauge school',
      theme: CustomTheme.lightTheme(),
      initialRoute: '/', // Set the initial route
      onGenerateRoute: generateRoute, // Use the dynamic route generator
    );
  }
}
