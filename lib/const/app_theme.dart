import 'package:flutter/material.dart';
import 'package:instagram_clone/const/color_pallet.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.mobileBackgroundColor,
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
      backgroundColor: AppColors.blueColor,
      minimumSize: Size(double.infinity, 42),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    )),
    // inputDecorationTheme: InputDecorationTheme(

    // ),
  );
}
