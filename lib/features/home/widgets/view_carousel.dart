import 'package:carousel_slider/carousel_slider.dart';
import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/app/theme/size_tokens.dart';
import 'package:emby_viwer/features/home/data/dto/library_dto.dart';
import 'package:flutter/material.dart';

class ViewCarousel extends StatelessWidget {
  const ViewCarousel({
    super.key,
    required this.reqFuture,
    required this.resolveServerUrl,
  });

  final Future<BrowsingUserViewsDto?> reqFuture;
  final String? Function() resolveServerUrl;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BrowsingUserViewsDto?>(
      future: reqFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 196,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return const SizedBox.shrink();
        }

        final colors = Theme.of(context).extension<ColorTokens>()!;
        final items = snapshot.data?.items ?? const <UserItemInfo>[];
        if (items.isEmpty) {
          return const SizedBox.shrink();
        }
        final imageUrls = items
            .map((item) => _buildCoverUrl(item))
            .where((url) => url.isNotEmpty)
            .toList();
        if (imageUrls.isEmpty) {
          return const SizedBox.shrink();
        }

        return CarouselSlider(
          options: CarouselOptions(
            height: 196,
            autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
          ),
          items: imageUrls.map((url) {
            return Stack(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppSizeTokens.radiusM,
                      ),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (_, _, _) =>
                            Container(color: colors.background),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }

  String _buildCoverUrl(UserItemInfo item) {
    final serverUrl = resolveServerUrl()?.trim() ?? '';
    final id = item.id;
    final primaryTag = item.imageTags?.primary;
    if (serverUrl.isEmpty ||
        id == null ||
        id.isEmpty ||
        primaryTag == null ||
        primaryTag.isEmpty) {
      return '';
    }
    return "${serverUrl}emby/Items/$id/Images/Primary?maxHeight=188&maxWidth=335&tag=$primaryTag&quality=90";
  }
}
