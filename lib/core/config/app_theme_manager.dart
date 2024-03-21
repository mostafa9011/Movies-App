import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Constants.goldenColor,
    scaffoldBackgroundColor: const Color(0xff121312),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Constants.goldenColor, size: 20),
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 20),
      selectedLabelStyle: TextStyle(
        color: Constants.goldenColor,
        fontSize: 10,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 10,
      ),
      backgroundColor: Color(0XFF1A1A1A),
      selectedItemColor: Constants.goldenColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
