import 'package:flutter/material.dart';
import 'package:instagram_clone/const/app_theme.dart';
import 'package:instagram_clone/responsive/responsive_layout.dart';
import 'package:instagram_clone/responsive/mobile_screen.dart/mobile_screen.dart';
import 'package:instagram_clone/responsive/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: ResponsiveLayout(WebLayoutScreen: WebScreen(), MobileLayoutScreen: MobileScreen()),
    );
  }
}
