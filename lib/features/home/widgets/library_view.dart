import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:emby_viwer/app/theme/color_tokens.dart';
import 'package:emby_viwer/app/theme/size_tokens.dart';
import 'package:emby_viwer/features/home/data/dto/library_dto.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key, required this.item, required this.serverUrl});

  final UserItemInfo item;
  final String serverUrl;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorTokens>()!;
    final imageUrl = _buildCoverUrl();
    final dateText = _formatDate();

    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizeTokens.radiusM),
              child: imageUrl.isEmpty
                  ? Container(
                      color: colors.background,
                      child: Icon(
                        Icons.folder_outlined,
                        size: AppSizeTokens.iconSizeXL,
                      ),
                    )
                  : Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (_, _, _) =>
                          Container(color: colors.background),
                    ),
            ),
          ),
          SizedBox(height: AppSizeTokens.spacingM),
          Text(
            item.name ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: colors.fontColor,
              fontSize: AppSizeTokens.titleXs,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSizeTokens.spacingXs),
          Text(
            dateText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: colors.fontLight,
              fontSize: AppSizeTokens.titleXs,
            ),
          ),
        ],
      ),
    );
  }

  String _buildCoverUrl() {
    final id = item.id;
    final primaryTag = item.imageTags?.primary;
    if (id == null || id.isEmpty || primaryTag == null || primaryTag.isEmpty) {
      return '';
    }
    return "${serverUrl}emby/Items/$id/Images/Primary?maxHeight=188&maxWidth=335&tag=$primaryTag&quality=90";
  }

  String _formatDate() {
    final rawDate = item.dateCreated;
    if (rawDate == null || rawDate.isEmpty) {
      return '';
    }
    try {
      final dateTime = DateTime.parse(rawDate).toLocal();
      return DateFormat("yyyy-MM-dd").format(dateTime);
    } catch (_) {
      return rawDate;
    }
  }
}
