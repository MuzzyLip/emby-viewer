// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrowsingUserViewsDtoImpl _$$BrowsingUserViewsDtoImplFromJson(
  Map<String, dynamic> json,
) => _$BrowsingUserViewsDtoImpl(
  items: (json['Items'] as List<dynamic>?)
      ?.map((e) => UserItemInfo.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalRecordCount: (json['TotalRecordCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$BrowsingUserViewsDtoImplToJson(
  _$BrowsingUserViewsDtoImpl instance,
) => <String, dynamic>{
  'Items': instance.items,
  'TotalRecordCount': instance.totalRecordCount,
};

_$BrowsingLibraryViewsImpl _$$BrowsingLibraryViewsImplFromJson(
  Map<String, dynamic> json,
) => _$BrowsingLibraryViewsImpl(
  items: (json['Items'] as List<dynamic>?)
      ?.map((e) => UserViewItems.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalRecordCount: (json['TotalRecordCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$BrowsingLibraryViewsImplToJson(
  _$BrowsingLibraryViewsImpl instance,
) => <String, dynamic>{
  'Items': instance.items,
  'TotalRecordCount': instance.totalRecordCount,
};

_$UserViewItemsImpl _$$UserViewItemsImplFromJson(Map<String, dynamic> json) =>
    _$UserViewItemsImpl(
      name: json['Name'] as String?,
      serverId: json['ServerId'] as String?,
      id: json['Id'] as String?,
      guid: json['Guid'] as String?,
      etag: json['Etag'] as String?,
      dateCreated: json['DateCreated'] as String?,
      canDelete: json['CanDelete'] as bool?,
      canDownload: json['CanDownload'] as bool?,
      presentationUniqueKey: json['PresentationUniqueKey'] as String?,
      sortName: json['SortName'] as String?,
      forcedSortName: json['ForcedSortName'] as String?,
      externalUrls: json['ExternalUrls'] as List<dynamic>?,
      taglines: json['Taglines'] as List<dynamic>?,
      remoteTrailers: json['RemoteTrailers'] as List<dynamic>?,
      providerIds: json['ProviderIds'],
      isFolder: json['IsFolder'] as bool?,
      parentId: json['ParentId'] as String?,
      type: json['Type'] as String?,
      userData: json['UserData'] as Map<String, dynamic>?,
      childCount: (json['ChildCount'] as num?)?.toInt(),
      displayPreferencesId: json['DisplayPreferencesId'] as String?,
      primaryImageAspectRatio: (json['PrimaryImageAspectRatio'] as num?)
          ?.toInt(),
      imageTags: json['ImageTags'] == null
          ? null
          : ImageTagsDto.fromJson(json['ImageTags'] as Map<String, dynamic>),
      backdropImageTags: json['BackdropImageTags'] as List<dynamic>?,
      lockedFields: json['LockedFields'] as List<dynamic>?,
      lockData: json['LockData'] as bool?,
    );

Map<String, dynamic> _$$UserViewItemsImplToJson(_$UserViewItemsImpl instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'ServerId': instance.serverId,
      'Id': instance.id,
      'Guid': instance.guid,
      'Etag': instance.etag,
      'DateCreated': instance.dateCreated,
      'CanDelete': instance.canDelete,
      'CanDownload': instance.canDownload,
      'PresentationUniqueKey': instance.presentationUniqueKey,
      'SortName': instance.sortName,
      'ForcedSortName': instance.forcedSortName,
      'ExternalUrls': instance.externalUrls,
      'Taglines': instance.taglines,
      'RemoteTrailers': instance.remoteTrailers,
      'ProviderIds': instance.providerIds,
      'IsFolder': instance.isFolder,
      'ParentId': instance.parentId,
      'Type': instance.type,
      'UserData': instance.userData,
      'ChildCount': instance.childCount,
      'DisplayPreferencesId': instance.displayPreferencesId,
      'PrimaryImageAspectRatio': instance.primaryImageAspectRatio,
      'ImageTags': instance.imageTags,
      'BackdropImageTags': instance.backdropImageTags,
      'LockedFields': instance.lockedFields,
      'LockData': instance.lockData,
    };

_$UserItemInfoImpl _$$UserItemInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserItemInfoImpl(
      name: json['Name'] as String?,
      serverId: json['ServerId'] as String?,
      id: json['Id'] as String?,
      guid: json['Guid'] as String?,
      dateCreated: json['DateCreated'] as String?,
      isFolder: json['IsFolder'] as bool?,
      type: json['Type'] as String?,
      userData: json['UserData'] as Map<String, dynamic>?,
      imageTags: json['ImageTags'] == null
          ? null
          : ImageTagsDto.fromJson(json['ImageTags'] as Map<String, dynamic>),
      backdropImageTags: json['BackdropImageTags'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserItemInfoImplToJson(_$UserItemInfoImpl instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'ServerId': instance.serverId,
      'Id': instance.id,
      'Guid': instance.guid,
      'DateCreated': instance.dateCreated,
      'IsFolder': instance.isFolder,
      'Type': instance.type,
      'UserData': instance.userData,
      'ImageTags': instance.imageTags,
      'BackdropImageTags': instance.backdropImageTags,
    };

_$ImageTagsDtoImpl _$$ImageTagsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ImageTagsDtoImpl(primary: json['Primary'] as String?);

Map<String, dynamic> _$$ImageTagsDtoImplToJson(_$ImageTagsDtoImpl instance) =>
    <String, dynamic>{'Primary': instance.primary};
