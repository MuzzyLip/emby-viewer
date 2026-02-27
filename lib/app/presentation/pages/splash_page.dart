import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

import 'package:emby_viwer/app/router/app_router.dart';
import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/core/constants/app_constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkTokenAndNavigate();
    });
  }

  Future<void> _checkTokenAndNavigate() async {
    try {
      final token = await _secureStorage.read(key: AppConstants.accessToken);
      if (!mounted) return;

      if (token != null && token.trim().isNotEmpty) {
        debugPrint("Got Token $token");
        context.goNamed(AppRouteNames.home);
        return;
      }
      context.goNamed(AppRouteNames.signIn);
    } catch (_) {
      if (!mounted) return;
      context.goNamed(AppRouteNames.signIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorTokens;

    return Scaffold(
      backgroundColor: colors.appBackground,
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
