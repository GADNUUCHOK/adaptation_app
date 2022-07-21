import 'package:flutter/material.dart';

ThemeData _themeLight = ThemeData.light();

ThemeData themeLight = _themeLight.copyWith(
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.black));
