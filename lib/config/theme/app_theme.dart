import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF340E75);
const List<Color> colors = [
  _customColor,
  Colors.red,
  Colors.yellow,
  Colors.purpleAccent,
  Colors.deepPurple,
  Colors.indigo,
  Colors.lime
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= colors.length - 1);
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colors[selectedColor],
        brightness: Brightness.light);
  }
}
