import 'package:flutter/material.dart';
import 'package:instagram_clone/const/color_pallet.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
      scaffoldBackgroundColor: AppColors.mobileBackgroundColor,
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(backgroundColor: AppColors.blueColor)));
}
