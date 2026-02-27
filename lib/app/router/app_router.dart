import 'package:emby_viwer/app/router/app_tab_shell.dart';
import 'package:emby_viwer/app/presentation/pages/splash_page.dart';
import 'package:emby_viwer/features/auth/presentation/pages/sign_in_page.dart';
import 'package:emby_viwer/features/home/presentation/pages/home_page.dart';
import 'package:emby_viwer/features/library/presentation/pages/library_page.dart';
import 'package:emby_viwer/features/search/presentation/pages/search_page.dart';
import 'package:emby_viwer/features/settings/presentation/pages/settings_page.dart';
import 'package:go_router/go_router.dart';

final class AppRouteNames {
  static const String splash = 'splash';
  static const String signIn = 'sign-in';
  static const String home = 'home';
  static const String library = 'library';
  static const String search = 'search';
  static const String settings = 'settings';
}

final class AppRoutePaths {
  static const String splash = '/splash';
  static const String signIn = '/sign-in';
  static const String home = '/';
  static const String library = '/library';
  static const String search = '/search';
  static const String settings = '/settings';
}

final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutePaths.splash,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutePaths.splash,
        name: AppRouteNames.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRoutePaths.signIn,
        name: AppRouteNames.signIn,
        builder: (context, state) => const SignInPage(),
      ),
      // Keep Route Alive
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppTabShell(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutePaths.home,
                name: AppRouteNames.home,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutePaths.library,
                name: AppRouteNames.library,
                builder: (context, state) => const LibraryPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutePaths.search,
                name: AppRouteNames.search,
                builder: (context, state) => const SearchPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutePaths.settings,
                name: AppRouteNames.settings,
                builder: (context, state) => const SettingsPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
