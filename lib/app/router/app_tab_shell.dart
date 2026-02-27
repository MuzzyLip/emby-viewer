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
    final colors = Theme.of(context).colorTokens;
    final tabs = <_BottomTab>[
      _BottomTab(icon: Icons.home_outlined, label: l10n.homeTab),
      _BottomTab(icon: Icons.video_library_outlined, label: l10n.libraryTab),
      _BottomTab(icon: Icons.settings_outlined, label: l10n.settingsTab),
    ];
    final items = tabs
        .asMap()
        .entries
        .map((entry) {
          final index = entry.key;
          final tab = entry.value;
          final isActive = navigationShell.currentIndex == index;
          return BottomNavigationBarItem(
            icon: Icon(
              tab.icon,
              color: isActive
                  ? colors.bottomActiveColor
                  : colors.bottomInactiveColor,
            ),
            label: tab.label,
          );
        })
        .toList(growable: false);

    return Scaffold(
      body: navigationShell,
      backgroundColor: colors.bottomBackground,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: colors.bottomBackground,
          border: Border(top: BorderSide(color: colors.border, width: 1)),
        ),
        padding: EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: colors.bottomBackground,
          selectedItemColor: colors.bottomActiveColor,
          unselectedItemColor: colors.bottomInactiveColor,
          currentIndex: navigationShell.currentIndex,
          onTap: (int index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
          items: items,
        ),
      ),
    );
  }
}

final class _BottomTab {
  const _BottomTab({required this.icon, required this.label});

  final IconData icon;
  final String label;
}
