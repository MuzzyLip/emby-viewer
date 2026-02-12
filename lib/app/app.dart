import 'package:flutter/material.dart';

import 'package:emby_viwer/app/theme/app_theme.dart';
import 'package:emby_viwer/app/router/app_router.dart';
import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:emby_viwer/l10n/app_localizations.dart';

class EmbyViewerApp extends StatelessWidget {
  const EmbyViewerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      routerConfig: AppRouter.router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
