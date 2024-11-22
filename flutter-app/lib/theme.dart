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

TremorsTheme createTremorsTheme() {
  const primary = Color(0xff008fff);

  final themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(
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
    ),
    textTheme: GoogleFonts.barlowCondensedTextTheme(),
  );

  return TremorsTheme(
    themeData: themeData,
    colorScheme: TremorsColorScheme(),
    textTheme: TremorsTextTheme(),
  );
}