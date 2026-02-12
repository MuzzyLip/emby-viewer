import 'package:emby_viwer/app/theme/size_tokens.dart';
import 'package:emby_viwer/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'package:emby_viwer/app/theme/color_tokens.dart';

class AppSignInButton extends StatelessWidget {
  final VoidCallback? onTap;
  const AppSignInButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colors = Theme.of(context).colorTokens;
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: colors.brandPrimary,
        foregroundColor: colors.fontColor,
        minimumSize: const Size(double.infinity, 50),
        iconAlignment: IconAlignment.end,
        // Shadow Size
        elevation: AppSizeTokens.shadowL,
        shadowColor: colors.brandPrimary.withValues(alpha: 0.3),
      ),
      icon: Icon(Icons.arrow_forward_ios_sharp, size: AppSizeTokens.iconSizeS),
      onPressed: () => onTap?.call(),
      label: Text(
        l10n.signInPage_connectToServer,
        style: TextStyle(fontSize: AppSizeTokens.titleM),
      ),
    );
  }
}
