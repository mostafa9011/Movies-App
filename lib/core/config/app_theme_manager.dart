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
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 13,
        color: Color(0XFFCBCBCB),
      ),
      bodySmall: TextStyle(
        fontSize: 9,
        color: Color(0XFFCBCBCB),
      ),
    ),
  );
}
