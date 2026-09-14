import 'package:flutter/material.dart';
import '../../core/color_manager.dart';

class ThemeManager {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorManager.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.gold,
      selectedItemColor: ColorManager.white,
      unselectedItemColor: ColorManager.black,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
    inputDecorationTheme: InputDecorationThemeData(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorManager.gold),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorManager.gold),
      ),

      hintStyle: TextStyle(color: ColorManager.ofwhite),

      prefixIconColor: ColorManager.gold,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: ColorManager.ofwhite),
      labelLarge: TextStyle(fontSize: 24 ,color: ColorManager.black,fontWeight: FontWeight.bold),
          labelSmall: TextStyle(fontSize: 14  ,color: ColorManager.black,fontWeight: FontWeight.bold),

    )
  );
  static ThemeData dark = ThemeData();
}
