import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
    Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepOrange,
  Colors.pink,
  Colors.pinkAccent,
  Colors.grey,
  Colors.white24

];

class AppTheme {
  final int selectedColor;
  final bool  isDarkMode;

  AppTheme({this.selectedColor = 3 , this.isDarkMode = false}):assert(selectedColor >= 0, 'Selected color must be greater than zero'),
  assert(selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
    )
  );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(selectedColor: selectedColor ?? this.selectedColor, isDarkMode: isDarkMode ?? this.isDarkMode);
}
