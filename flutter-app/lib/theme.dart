import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TremorsTheme {
  final ThemeData themeData;
  final TremorsColorScheme colorScheme;
  final TremorsTextTheme textTheme;

  TremorsTheme({
    required this.themeData,
    required this.colorScheme,
    required this.textTheme,
  });
}

class TremorsColorScheme {}

class TremorsTextTheme {}

TremorsTheme createTheme() {
  const primary = Color(0xff008fff);
  final colorScheme = ColorScheme.fromSeed(
    seedColor: primary,
    primary: primary,
    error: const Color(0xffff0054),
    secondary: const Color(0xff1a656d),
    surface: const Color(0xffffffff),
    outline: const Color(0xffb1b2b5),
    outlineVariant: const Color(0xffeceded),
    onSurface: const Color(0xff031728),
    onPrimary: const Color(0xffe9f4ff),
    onError: const Color(0xffffe2fa),
  );

  final textTheme = GoogleFonts.barlowCondensedTextTheme();

  return TremorsTheme(
    themeData: ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      navigationBarTheme: _navigationBarThemeData(colorScheme, textTheme),
    ),
    colorScheme: TremorsColorScheme(),
    textTheme: TremorsTextTheme(),
  );
}

NavigationBarThemeData _navigationBarThemeData(
  ColorScheme colorScheme,
  TextTheme textTheme,
) {
  final iconTheme = IconThemeData(size: 25, color: colorScheme.onSurface);

  final labelTheme = textTheme.bodySmall!.copyWith(color: colorScheme.outline);

  final selectedLabelTheme = labelTheme.copyWith(color: colorScheme.onSurface);

  final selectedIconTheme = iconTheme.copyWith(color: colorScheme.onPrimary);

  return NavigationBarThemeData(
      backgroundColor: colorScheme.surface,
      indicatorColor: colorScheme.primary,
      height: 70,
      iconTheme: WidgetStateProperty.resolveWith(
        (stateSet) => stateSet.contains(WidgetState.selected)
            ? selectedIconTheme
            : iconTheme,
      ),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (stateSet) => stateSet.contains(WidgetState.selected)
            ? selectedLabelTheme
            : labelTheme,
      ));
}
