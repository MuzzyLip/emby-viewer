import 'package:flutter/material.dart';

import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/app/theme/size_tokens.dart';

class AppSignInTitle extends StatelessWidget {
  final String title;
  const AppSignInTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorTokens;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: AppSizeTokens.spacingS,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppSizeTokens.title2Xl,
            color: colors.fontColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizeTokens.dotSize),
            color: colors.brandPrimary,
          ),
          width: AppSizeTokens.dotSize,
          height: AppSizeTokens.dotSize,
          margin: EdgeInsets.only(bottom: AppSizeTokens.spacingS),
        ),
      ],
    );
  }
}
