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
    required this.inputBackground,
    required this.border,
  });

  final Color brandPrimary;
  final Color fontColor;
  final Color iconColor;
  final Color fontLight;
  final Color fontLabel;
  final Color fontPlaceholder;
  final Color background;
  final Color inputBackground;
  final Color border;

  const ColorTokens.light()
    : brandPrimary = const Color(0xFF51B54A),
      iconColor = const Color(0xFF222222),
      fontColor = const Color(0xFF000000),
      fontLight = const Color(0xFF94A3B8),
      fontLabel = const Color(0xFF64748B),
      fontPlaceholder = const Color(0xFF475569),
      background = const Color(0xFFFCFCFC),
      inputBackground = const Color(0xFF222222),
      border = const Color(0xFF333333);

  const ColorTokens.dark()
    : brandPrimary = const Color(0xFF51B54A),
      iconColor = const Color(0xFF222222),
      fontColor = const Color(0xFFFFFFFF),
      fontLight = const Color(0xFF94A3B8),
      fontLabel = const Color(0xFF64748B),
      fontPlaceholder = const Color(0xFF475569),
      background = const Color(0xFF1C1D1B),
      inputBackground = const Color(0xFF222222),
      border = const Color(0xFF333333);

  @override
  ColorTokens copyWith({
    Color? brandPrimary,
    Color? iconColor,
    Color? fontColor,
    Color? fontLight,
    Color? fontLabel,
    Color? fontPlaceholder,
    Color? background,
    Color? inputBackground,
    Color? border,
  }) {
    return ColorTokens(
      brandPrimary: brandPrimary ?? this.brandPrimary,
      iconColor: iconColor ?? this.iconColor,
      fontColor: fontColor ?? this.fontColor,
      fontLight: fontLight ?? this.fontLight,
      fontLabel: fontLabel ?? this.fontLabel,
      fontPlaceholder: fontPlaceholder ?? this.fontPlaceholder,
      background: background ?? this.background,
      inputBackground: inputBackground ?? this.inputBackground,
      border: border ?? this.border,
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
      inputBackground: Color.lerp(inputBackground, other.inputBackground, t)!,
      border: Color.lerp(border, other.border, t)!,
    );
  }
}

extension ColorTokensX on ThemeData {
  ColorTokens get colorTokens => extension<ColorTokens>()!;
}
