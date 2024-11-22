import 'package:flutter/material.dart';

extension BuildContextPlus on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension TextStylePlus on TextStyle? {
  TextStyle? operator <<(Color color) => this?.copyWith(color: color);
}
