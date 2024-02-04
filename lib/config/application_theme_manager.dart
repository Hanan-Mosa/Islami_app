import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'El Messiri',
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF242424),
          selectedLabelStyle: TextStyle(
            fontFamily: "El Messiri",
            color: Color(0xFF242424),
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF242424),
          ),
          unselectedItemColor: Color(0xFFFFFFFF),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFF),
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
            fontSize: 12,
            fontFamily: "El Messiri",
          )));
}
