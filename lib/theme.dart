import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.pinkAccent),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(15),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 34,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        size: 24,
        color: Colors.pink,
      ),
    ),
  );
}
