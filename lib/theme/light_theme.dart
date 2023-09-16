import 'package:flutter/material.dart';

class LightTheme{
  ThemeData theme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.indigo,centerTitle: false),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.indigo),
    textTheme: ThemeData.light().textTheme.copyWith(
      titleMedium: const TextStyle(
        fontSize: 24,
        color: Colors.black54,
      ),
    ),
  );

}