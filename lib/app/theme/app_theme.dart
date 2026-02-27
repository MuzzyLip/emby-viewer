import 'package:flutter/material.dart';

import 'color_tokens.dart';

final class AppTheme {
  static ThemeData light() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF51B54A)),
      useMaterial3: true,
      splashFactory: NoSplash.splashFactory,
      extensions: const <ThemeExtension<dynamic>>[ColorTokens.light()],
    );
  }

  static ThemeData dark() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF51B54A),
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
      splashFactory: NoSplash.splashFactory,
      extensions: const <ThemeExtension<dynamic>>[ColorTokens.dark()],
    );
  }
}
