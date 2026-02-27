import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_dto.freezed.dart';
part 'library_dto.g.dart';

@freezed
class BrowsingUserViewsDto with _$BrowsingUserViewsDto {
  const factory BrowsingUserViewsDto({
    @JsonKey(name: 'Items') List<UserItemInfo>? items,
    @JsonKey(name: 'TotalRecordCount') int? totalRecordCount,
  }) = _BrowsingUserViewsDto;

  factory BrowsingUserViewsDto.fromJson(Map<String, dynamic> json) =>
      _$BrowsingUserViewsDtoFromJson(json);
}

@freezed
class BrowsingLibraryViews with _$BrowsingLibraryViews {
  const factory BrowsingLibraryViews({
    @JsonKey(name: 'Items') List<UserViewItems>? items,
    @JsonKey(name: 'TotalRecordCount') int? totalRecordCount,
  }) = _BrowsingLibraryViews;

  factory BrowsingLibraryViews.fromJson(Map<String, dynamic> json) =>
      _$BrowsingLibraryViewsFromJson(json);
}

@freezed
class UserViewItems with _$UserViewItems {
  const factory UserViewItems({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Guid') String? guid,
    @JsonKey(name: 'Etag') String? etag,
    @JsonKey(name: 'DateCreated') String? dateCreated,
    @JsonKey(name: 'CanDelete') bool? canDelete,
    @JsonKey(name: 'CanDownload') bool? canDownload,
    @JsonKey(name: 'PresentationUniqueKey') String? presentationUniqueKey,
    @JsonKey(name: 'SortName') String? sortName,
    @JsonKey(name: 'ForcedSortName') String? forcedSortName,
    @JsonKey(name: 'ExternalUrls') List? externalUrls,
    @JsonKey(name: 'Taglines') List? taglines,
    @JsonKey(name: 'RemoteTrailers') List? remoteTrailers,
    @JsonKey(name: 'ProviderIds') dynamic providerIds,
    @JsonKey(name: 'IsFolder') bool? isFolder,
    @JsonKey(name: 'ParentId') String? parentId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'UserData') Map<String, dynamic>? userData,
    @JsonKey(name: 'ChildCount') int? childCount,
    @JsonKey(name: 'DisplayPreferencesId') String? displayPreferencesId,
    @JsonKey(name: 'PrimaryImageAspectRatio') int? primaryImageAspectRatio,
    @JsonKey(name: 'ImageTags') ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') List? backdropImageTags,
    @JsonKey(name: 'LockedFields') List? lockedFields,
    @JsonKey(name: 'LockData') bool? lockData,
  }) = _UserViewItems;

  factory UserViewItems.fromJson(Map<String, dynamic> json) =>
      _$UserViewItemsFromJson(json);
}

@freezed
class UserItemInfo with _$UserItemInfo {
  const factory UserItemInfo({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Guid') String? guid,
    @JsonKey(name: 'DateCreated') String? dateCreated,
    @JsonKey(name: 'IsFolder') bool? isFolder,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'UserData') Map<String, dynamic>? userData,
    @JsonKey(name: 'ImageTags') ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') List? backdropImageTags,
  }) = _UserItemInfo;

  factory UserItemInfo.fromJson(Map<String, dynamic> json) =>
      _$UserItemInfoFromJson(json);
}

@freezed
class ImageTagsDto with _$ImageTagsDto {
  const factory ImageTagsDto({@JsonKey(name: 'Primary') String? primary}) =
      _ImageTagsDto;

  factory ImageTagsDto.fromJson(Map<String, dynamic> json) =>
      _$ImageTagsDtoFromJson(json);
}
