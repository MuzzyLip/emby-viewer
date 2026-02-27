import 'package:flutter/material.dart';

class ColorTokens extends ThemeExtension<ColorTokens> {
  const ColorTokens({
    required this.brandPrimary,
    required this.iconColor,
    required this.fontColor,
    required this.fontLight,
    required this.fontLabel,
    required this.fontPlaceholder,
    required this.background,
    required this.appBackground,
    required this.inputBackground,
    required this.border,
    required this.warning,
    required this.error,
    required this.bottomBackground,
    required this.bottomInactiveColor,
    required this.bottomActiveColor,
  });

  final Color brandPrimary;
  final Color fontColor;
  final Color iconColor;
  final Color fontLight;
  final Color fontLabel;
  final Color fontPlaceholder;
  final Color background;
  final Color appBackground;
  final Color inputBackground;
  final Color border;
  final Color warning;
  final Color error;
  final Color bottomBackground;
  final Color bottomInactiveColor;
  final Color bottomActiveColor;

  const ColorTokens.light()
    : brandPrimary = const Color(0xFF51B54A),
      iconColor = const Color(0xFF222222),
      fontColor = const Color(0xFF000000),
      fontLight = const Color(0xFF94A3B8),
      fontLabel = const Color(0xFF64748B),
      fontPlaceholder = const Color(0xFF475569),
      background = const Color(0xFFFCFCFC),
      appBackground = const Color(0xFFFCFCFC),
      inputBackground = const Color(0xFF222222),
      border = const Color(0xFF333333),
      warning = const Color(0xFFFDD663),
      error = const Color(0xFFF44336),
      bottomBackground = const Color(0xFF151D15),
      bottomInactiveColor = const Color(0xFF9CA3AF),
      bottomActiveColor = const Color(0xFF51B54A);

  const ColorTokens.dark()
    : brandPrimary = const Color(0xFF51B54A),
      iconColor = const Color(0xFF222222),
      fontColor = const Color(0xFFFFFFFF),
      fontLight = const Color(0xFF94A3B8),
      fontLabel = const Color(0xFF64748B),
      fontPlaceholder = const Color(0xFF475569),
      background = const Color(0xFF1C1D1B),
      appBackground = const Color(0xFF122111),
      inputBackground = const Color(0xFF222222),
      border = const Color(0xFF333333),
      warning = const Color(0xFFFDD663),
      error = const Color(0xFFF44336),
      bottomBackground = const Color(0xFF151D15),
      bottomInactiveColor = const Color(0xFF9CA3AF),
      bottomActiveColor = const Color(0xFF51B54A);

  @override
  ColorTokens copyWith({
    Color? brandPrimary,
    Color? iconColor,
    Color? fontColor,
    Color? fontLight,
    Color? fontLabel,
    Color? fontPlaceholder,
    Color? background,
    Color? appBackground,
    Color? inputBackground,
    Color? border,
    Color? warning,
    Color? error,
    Color? bottomBackground,
    Color? bottomInactiveColor,
    Color? bottomActiveColor,
  }) {
    return ColorTokens(
      brandPrimary: brandPrimary ?? this.brandPrimary,
      iconColor: iconColor ?? this.iconColor,
      fontColor: fontColor ?? this.fontColor,
      fontLight: fontLight ?? this.fontLight,
      fontLabel: fontLabel ?? this.fontLabel,
      fontPlaceholder: fontPlaceholder ?? this.fontPlaceholder,
      background: background ?? this.background,
      appBackground: appBackground ?? this.appBackground,
      inputBackground: inputBackground ?? this.inputBackground,
      border: border ?? this.border,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      bottomBackground: bottomBackground ?? this.bottomBackground,
      bottomInactiveColor: bottomInactiveColor ?? this.bottomInactiveColor,
      bottomActiveColor: bottomActiveColor ?? this.bottomActiveColor,
    );
  }

  @override
  ColorTokens lerp(covariant ThemeExtension<ColorTokens>? other, double t) {
    if (other is! ColorTokens) {
      return this;
    }

    return ColorTokens(
      brandPrimary: Color.lerp(brandPrimary, other.brandPrimary, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      fontColor: Color.lerp(fontColor, other.fontColor, t)!,
      fontLight: Color.lerp(fontLight, other.fontLight, t)!,
      fontLabel: Color.lerp(fontLabel, other.fontLabel, t)!,
      fontPlaceholder: Color.lerp(fontPlaceholder, other.fontPlaceholder, t)!,
      background: Color.lerp(background, other.background, t)!,
      appBackground: Color.lerp(appBackground, other.appBackground, t)!,
      inputBackground: Color.lerp(inputBackground, other.inputBackground, t)!,
      border: Color.lerp(border, other.border, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      bottomBackground: Color.lerp(
        bottomBackground,
        other.bottomBackground,
        t,
      )!,
      bottomInactiveColor: Color.lerp(
        bottomInactiveColor,
        other.bottomInactiveColor,
        t,
      )!,
      bottomActiveColor: Color.lerp(
        bottomActiveColor,
        other.bottomActiveColor,
        t,
      )!,
    );
  }
}

extension ColorTokensX on ThemeData {
  ColorTokens get colorTokens => extension<ColorTokens>()!;
}
