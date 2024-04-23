import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: accentColor,
      background: backgroundColor,
      surfaceTint: appbarColor,
      onSurface: appbarForegroundColor),
  drawerTheme: DrawerThemeData(
      backgroundColor: appbarColor, surfaceTintColor: appbarColor),
  appBarTheme: AppBarTheme(
    color: appbarColor,
    foregroundColor: appbarForegroundColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
  inputDecorationTheme: InputDecorationTheme(
      fillColor: appbarColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: appbarForegroundColor),
        borderRadius: BorderRadius.circular(12.0),
      )),
);
