import 'package:flutter/material.dart';

final ThemeData kLightBeeKeeperTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      color: Colors.amber,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    primaryColor: Colors.amber,
    brightness: Brightness.light,
  );
}
