import 'package:emby_viwer/features/auth/data/auth_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:emby_viwer/app/theme/size_tokens.dart';
import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/l10n/app_localizations.dart';
import 'package:emby_viwer/gen/assets.gen.dart';
import 'package:emby_viwer/core/error/app_exception.dart';

import 'package:emby_viwer/shared/widgets/app_logo.dart';
import 'package:emby_viwer/features/auth/widgets/app_sign_in_title.dart';
import 'package:emby_viwer/shared/widgets/app_input.dart';
import 'package:emby_viwer/features/auth/widgets/app_sign_in_button.dart';
import 'package:emby_viwer/core/presentation/toast/app_toast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final Uri _url = Uri.parse("https://emby.media/about.html");

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _addressController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorTokens;
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppSizeTokens.homePaddingTop,
                  left: AppSizeTokens.homePaddingHorizontal,
                  right: AppSizeTokens.homePaddingHorizontal,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: AppSizeTokens.homeTopSpacing,
                  children: [
                    AppLogo(
                      width: AppSizeTokens.logoWidth,
                      height: AppSizeTokens.logoHeight,
                    ),
                    AppSignInTitle(title: AppConstants.appName),
                    Text(
                      l10n.signInPage_connectToEmby,
                      style: TextStyle(
                        fontSize: AppSizeTokens.titleM,
                        color: colors.fontLight,
                      ),
                    ),
                    SizedBox(height: AppSizeTokens.spacing4XL),
                    AppInput(
                      label: l10n.signInPage_serverAddr,
                      prefixIcon: SvgPicture.asset(Assets.images.serverAddress),
                      placeholder: l10n.signInPage_serverAddrPlaceholder,
                      defaultValue: "192.168.1.5:8096",
                      inputController: _addressController,
                    ),
                    AppInput(
                      label: l10n.signInPage_username,
                      prefixIcon: SvgPicture.asset(Assets.images.user),
                      placeholder: l10n.signInPage_usernamePlaceholder,
                      inputController: _usernameController,
                    ),
                    AppInput(
                      label: l10n.signInPage_password,
                      prefixIcon: SvgPicture.asset(Assets.images.password),
                      placeholder: l10n.signInPage_passwordPlaceholder,
                      inputController: _passwordController,
                      password: true,
                    ),
                    SizedBox(height: AppSizeTokens.homePaddingHorizontal),
                    AppSignInButton(onTap: () => onTopSignIn(context, l10n)),
                    SizedBox(height: AppSizeTokens.spacingXL),
                    Row(
                      spacing: AppSizeTokens.spacingM,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          l10n.signInPage_newToEmby,
                          style: TextStyle(
                            fontSize: AppSizeTokens.titleXs,
                            color: colors.fontLabel,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.all(0),
                          ),
                          onPressed: _launchInBrowser,
                          child: Text(
                            l10n.signInPage_learnMore,
                            style: TextStyle(
                              fontSize: AppSizeTokens.titleXs,
                              color: colors.brandPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTopSignIn(BuildContext context, AppLocalizations l10n) async {
    final String address = _addressController.text.trim();
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();
    if (address == "" || username == "" || password == "") {
      return AppToast.warning(context, l10n.signInPage_enterInput);
    }
    try {
      final client = AuthClient();
      final info = await client.systemInfoPublic(serverAddress: address);
      if (info.version == null) {
        throw AppException("UnExceptError: Can't get version. $info");
      }
      final data = await client.authenticateByName(
        serverAddress: address,
        username: username,
        password: password,
        version: info.version!,
        language: l10n.localeName,
      );
      if (!context.mounted) return;
      debugPrint("Check data: ${data.accessToken}");
    } on NetworkException catch (e) {
      // TODO: Detected an untrusted certificate; prompting the user to connect via an insecure connection.
      if (!context.mounted) return;
      AppToast.error(context, e.message);
    } catch (e) {
      if (!context.mounted) return;
      AppToast.error(context, "Request failed: $e");
    }
  }

  Future<void> _launchInBrowser() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception("Failed to launch url $_url");
    }
  }
}
