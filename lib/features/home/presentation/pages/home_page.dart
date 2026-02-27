import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:emby_viwer/app/router/app_router.dart';
import 'package:emby_viwer/core/error/app_exception.dart';
import 'package:emby_viwer/l10n/app_localizations.dart';
import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/app/theme/size_tokens.dart';

import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:emby_viwer/features/home/data/home_client.dart';
import 'package:emby_viwer/features/home/data/dto/library_dto.dart';
import 'package:emby_viwer/shared/widgets/app_logo.dart';
import 'package:emby_viwer/features/home/widgets/library_view.dart';
import 'package:emby_viwer/features/home/widgets/view_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final client = HomeClient();
  late final Future<BrowsingUserViewsDto?> _userViewsFuture;
  late final Future<BrowsingUserViewsDto?> _randomViewsFuture;

  @override
  void initState() {
    super.initState();
    _userViewsFuture = getUserViews();
    _randomViewsFuture = getRandomViews();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorTokens>()!;
    final l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppSizeTokens.spacing2XL),
        child: Column(
          children: [
            // Top header
            SizedBox(
              width: double.infinity,
              height: 64,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: AppSizeTokens.spacingM,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: AppSizeTokens.spacingL),
                    child: AppLogo(width: 50, height: 50),
                  ),
                  Text(
                    AppConstants.appName,
                    style: TextStyle(
                      fontSize: AppSizeTokens.title2Xl,
                      color: colors.fontColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Random Suggesion
            Container(
              margin: EdgeInsets.only(top: AppSizeTokens.spacing24),
              child: ViewCarousel(
                reqFuture: _randomViewsFuture,
                resolveServerUrl: () => client.serverAddress,
              ),
            ),
            // Media list
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: AppSizeTokens.spacing32),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizeTokens.spacingXs,
                ),
                child: Column(
                  spacing: AppSizeTokens.spacing2XL,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          l10n.homePage_latestMedia,
                          style: TextStyle(
                            color: colors.fontColor,
                            fontSize: AppSizeTokens.titleXl,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(AppRouteNames.library),
                          child: Text(
                            l10n.homePage_browserAll,
                            style: TextStyle(
                              color: colors.brandPrimary,
                              fontSize: AppSizeTokens.titleM,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: FutureBuilder<BrowsingUserViewsDto?>(
                        future: _userViewsFuture,
                        builder:
                            (
                              BuildContext context,
                              AsyncSnapshot<BrowsingUserViewsDto?> snapshot,
                            ) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              if (snapshot.hasError) {
                                // Retry Button
                                return const SizedBox.shrink();
                              }
                              if (snapshot.hasData) {
                                final BrowsingUserViewsDto userViews =
                                    snapshot.data!;
                                final datas = userViews.items ?? const [];
                                return GridView.builder(
                                  itemCount: datas.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing:
                                            AppSizeTokens.spacingM,
                                      ),
                                  itemBuilder: (context, index) => LibraryView(
                                    item: datas[index],
                                    serverUrl: client.serverAddress ?? '',
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<BrowsingUserViewsDto?> getUserViews() async {
    final userId = await client.getUserId();
    if (userId == null) {
      if (mounted) {
        context.goNamed(AppRouteNames.signIn);
      }
      throw NetworkException(-999, "Unable to get userId");
    }
    return client.browsingUserViews(userId);
  }

  Future<BrowsingUserViewsDto?> getRandomViews() async {
    final userId = await client.getUserId();
    if (userId == null) {
      if (mounted) {
        context.goNamed(AppRouteNames.signIn);
      }
      throw NetworkException(-999, "Unable to get userId");
    }
    return client.browsingRandomViews(userId);
  }
}
