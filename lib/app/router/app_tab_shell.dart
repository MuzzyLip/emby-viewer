import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/l10n/app_localizations.dart';

class AppTabShell extends StatelessWidget {
  const AppTabShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colos = Theme.of(context).colorTokens;
    return Scaffold(
      body: navigationShell,
      backgroundColor: colos.background,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: l10n.homeTab,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: l10n.libraryTab,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: l10n.searchTab,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: l10n.settingsTab,
          ),
        ],
      ),
    );
  }
}
