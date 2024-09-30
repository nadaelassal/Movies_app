// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTheme {
  static const Color darkGrey = Color(0XFF514F4F);
  static const Color gold = Color(0XFFFFB224);
  static const Color white = Color(0XFFFFFFFF);
  static const Color grey = Color(0XFFC6C6C6);
  static const Color primary = Color(0XFF1E1E1E);

  static ThemeData dark = ThemeData(
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primary,
      selectedItemColor: gold,
      unselectedItemColor:grey,
    ),
    scaffoldBackgroundColor: primary,
  );
}
