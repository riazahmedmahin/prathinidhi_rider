import 'package:flutter/material.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/splash_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_theme_data.dart';

class Prathinidhi_rider extends StatelessWidget {
  const Prathinidhi_rider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
      home:SplashScreen() ,
    );
  }
}
