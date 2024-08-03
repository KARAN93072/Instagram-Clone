import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/dimentions.dart';

class ResponsiveLayout extends StatelessWidget {
  Widget WebLayoutScreen;
  Widget MobileLayoutScreen;
  ResponsiveLayout(
      {super.key,
      required this.WebLayoutScreen,
      required this.MobileLayoutScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webLayout) {
        ///Web Layout Screen
        return WebLayoutScreen;
      }

      ///Mobile Layout Screen
      return MobileLayoutScreen;
    });
  }
}
