import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:emby_viwer/app/theme/size_tokens.dart';
import 'package:emby_viwer/app/theme/color_tokens.dart';

enum AppToastType { success, info, warning, error }

final class AppToast {
  AppToast._();

  static final FToast _fToast = FToast();

  static void success(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _show(
      context,
      type: AppToastType.success,
      message: message,
      duration: duration,
    );
  }

  static void info(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _show(
      context,
      type: AppToastType.info,
      message: message,
      duration: duration,
    );
  }

  static void warning(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _show(
      context,
      type: AppToastType.warning,
      message: message,
      duration: duration,
    );
  }

  static void error(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    _show(
      context,
      type: AppToastType.error,
      message: message,
      duration: duration,
    );
  }

  static void _show(
    BuildContext context, {
    required AppToastType type,
    required String message,
    required Duration duration,
  }) {
    _fToast.init(context);
    _fToast.removeQueuedCustomToasts();

    final theme = Theme.of(context);
    final tokens = theme.colorTokens;

    final iconData = switch (type) {
      AppToastType.success => Icons.check_circle_outline_rounded,
      AppToastType.info => Icons.info_outlined,
      AppToastType.warning => Icons.error_outline_rounded,
      AppToastType.error => Icons.cancel_outlined,
    };

    final accentColor = switch (type) {
      AppToastType.success => tokens.brandPrimary,
      AppToastType.info => tokens.fontLabel,
      AppToastType.warning => tokens.warning,
      AppToastType.error => tokens.error,
    };

    _fToast.showToast(
      gravity: ToastGravity.TOP,
      toastDuration: duration,
      child: _ToastCard(
        icon: iconData,
        color: accentColor,
        message: message,
        background: tokens.background.withValues(alpha: 0.9),
        textColor: tokens.fontColor,
      ),
    );
  }
}

class _ToastCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String message;
  final Color background;
  final Color textColor;

  const _ToastCard({
    required this.icon,
    required this.color,
    required this.message,
    required this.background,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizeTokens.spacing2XL,
        vertical: AppSizeTokens.spacingL,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizeTokens.radiusL),
        color: background,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: AppSizeTokens.shadowS,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: AppSizeTokens.spacingXL,
        children: [
          Icon(icon, color: color, size: AppSizeTokens.iconSizeM),
          Flexible(
            fit: FlexFit.loose,
            child: Text(
              message,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontSize: AppSizeTokens.titleS,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
