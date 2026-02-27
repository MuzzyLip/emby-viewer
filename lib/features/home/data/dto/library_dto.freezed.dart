// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BrowsingUserViewsDto _$BrowsingUserViewsDtoFromJson(Map<String, dynamic> json) {
  return _BrowsingUserViewsDto.fromJson(json);
}

/// @nodoc
mixin _$BrowsingUserViewsDto {
  @JsonKey(name: 'Items')
  List<UserItemInfo>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalRecordCount')
  int? get totalRecordCount => throw _privateConstructorUsedError;

  /// Serializes this BrowsingUserViewsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrowsingUserViewsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrowsingUserViewsDtoCopyWith<BrowsingUserViewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowsingUserViewsDtoCopyWith<$Res> {
  factory $BrowsingUserViewsDtoCopyWith(
    BrowsingUserViewsDto value,
    $Res Function(BrowsingUserViewsDto) then,
  ) = _$BrowsingUserViewsDtoCopyWithImpl<$Res, BrowsingUserViewsDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'Items') List<UserItemInfo>? items,
    @JsonKey(name: 'TotalRecordCount') int? totalRecordCount,
  });
}

/// @nodoc
class _$BrowsingUserViewsDtoCopyWithImpl<
  $Res,
  $Val extends BrowsingUserViewsDto
>
    implements $BrowsingUserViewsDtoCopyWith<$Res> {
  _$BrowsingUserViewsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrowsingUserViewsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = freezed, Object? totalRecordCount = freezed}) {
    return _then(
      _value.copyWith(
            items: freezed == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<UserItemInfo>?,
            totalRecordCount: freezed == totalRecordCount
                ? _value.totalRecordCount
                : totalRecordCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BrowsingUserViewsDtoImplCopyWith<$Res>
    implements $BrowsingUserViewsDtoCopyWith<$Res> {
  factory _$$BrowsingUserViewsDtoImplCopyWith(
    _$BrowsingUserViewsDtoImpl value,
    $Res Function(_$BrowsingUserViewsDtoImpl) then,
  ) = __$$BrowsingUserViewsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Items') List<UserItemInfo>? items,
    @JsonKey(name: 'TotalRecordCount') int? totalRecordCount,
  });
}

/// @nodoc
class __$$BrowsingUserViewsDtoImplCopyWithImpl<$Res>
    extends _$BrowsingUserViewsDtoCopyWithImpl<$Res, _$BrowsingUserViewsDtoImpl>
    implements _$$BrowsingUserViewsDtoImplCopyWith<$Res> {
  __$$BrowsingUserViewsDtoImplCopyWithImpl(
    _$BrowsingUserViewsDtoImpl _value,
    $Res Function(_$BrowsingUserViewsDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrowsingUserViewsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = freezed, Object? totalRecordCount = freezed}) {
    return _then(
      _$BrowsingUserViewsDtoImpl(
        items: freezed == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<UserItemInfo>?,
        totalRecordCount: freezed == totalRecordCount
            ? _value.totalRecordCount
            : totalRecordCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BrowsingUserViewsDtoImpl implements _BrowsingUserViewsDto {
  const _$BrowsingUserViewsDtoImpl({
    @JsonKey(name: 'Items') final List<UserItemInfo>? items,
    @JsonKey(name: 'TotalRecordCount') this.totalRecordCount,
  }) : _items = items;

  factory _$BrowsingUserViewsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrowsingUserViewsDtoImplFromJson(json);

  final List<UserItemInfo>? _items;
  @override
  @JsonKey(name: 'Items')
  List<UserItemInfo>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'TotalRecordCount')
  final int? totalRecordCount;

  @override
  String toString() {
    return 'BrowsingUserViewsDto(items: $items, totalRecordCount: $totalRecordCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrowsingUserViewsDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalRecordCount, totalRecordCount) ||
                other.totalRecordCount == totalRecordCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    totalRecordCount,
  );

  /// Create a copy of BrowsingUserViewsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrowsingUserViewsDtoImplCopyWith<_$BrowsingUserViewsDtoImpl>
  get copyWith =>
      __$$BrowsingUserViewsDtoImplCopyWithImpl<_$BrowsingUserViewsDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BrowsingUserViewsDtoImplToJson(this);
  }
}

abstract class _BrowsingUserViewsDto implements BrowsingUserViewsDto {
  const factory _BrowsingUserViewsDto({
    @JsonKey(name: 'Items') final List<UserItemInfo>? items,
    @JsonKey(name: 'TotalRecordCount') final int? totalRecordCount,
  }) = _$BrowsingUserViewsDtoImpl;

  factory _BrowsingUserViewsDto.fromJson(Map<String, dynamic> json) =
      _$BrowsingUserViewsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'Items')
  List<UserItemInfo>? get items;
  @override
  @JsonKey(name: 'TotalRecordCount')
  int? get totalRecordCount;

  /// Create a copy of BrowsingUserViewsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrowsingUserViewsDtoImplCopyWith<_$BrowsingUserViewsDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BrowsingLibraryViews _$BrowsingLibraryViewsFromJson(Map<String, dynamic> json) {
  return _BrowsingLibraryViews.fromJson(json);
}

/// @nodoc
mixin _$BrowsingLibraryViews {
  @JsonKey(name: 'Items')
  List<UserViewItems>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalRecordCount')
  int? get totalRecordCount => throw _privateConstructorUsedError;

  /// Serializes this BrowsingLibraryViews to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrowsingLibraryViews
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrowsingLibraryViewsCopyWith<BrowsingLibraryViews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowsingLibraryViewsCopyWith<$Res> {
  factory $BrowsingLibraryViewsCopyWith(
    BrowsingLibraryViews value,
    $Res Function(BrowsingLibraryViews) then,
  ) = _$BrowsingLibraryViewsCopyWithImpl<$Res, BrowsingLibraryViews>;
  @useResult
  $Res call({
    @JsonKey(name: 'Items') List<UserViewItems>? items,
    @JsonKey(name: 'TotalRecordCount') int? totalRecordCount,
  });
}

/// @nodoc
class _$BrowsingLibraryViewsCopyWithImpl<
  $Res,
  $Val extends BrowsingLibraryViews
>
    implements $BrowsingLibraryViewsCopyWith<$Res> {
  _$BrowsingLibraryViewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrowsingLibraryViews
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = freezed, Object? totalRecordCount = freezed}) {
    return _then(
      _value.copyWith(
            items: freezed == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<UserViewItems>?,
            totalRecordCount: freezed == totalRecordCount
                ? _value.totalRecordCount
                : totalRecordCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BrowsingLibraryViewsImplCopyWith<$Res>
    implements $BrowsingLibraryViewsCopyWith<$Res> {
  factory _$$BrowsingLibraryViewsImplCopyWith(
    _$BrowsingLibraryViewsImpl value,
    $Res Function(_$BrowsingLibraryViewsImpl) then,
  ) = __$$BrowsingLibraryViewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Items') List<UserViewItems>? items,
    @JsonKey(name: 'TotalRecordCount') int? totalRecordCount,
  });
}

/// @nodoc
class __$$BrowsingLibraryViewsImplCopyWithImpl<$Res>
    extends _$BrowsingLibraryViewsCopyWithImpl<$Res, _$BrowsingLibraryViewsImpl>
    implements _$$BrowsingLibraryViewsImplCopyWith<$Res> {
  __$$BrowsingLibraryViewsImplCopyWithImpl(
    _$BrowsingLibraryViewsImpl _value,
    $Res Function(_$BrowsingLibraryViewsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrowsingLibraryViews
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = freezed, Object? totalRecordCount = freezed}) {
    return _then(
      _$BrowsingLibraryViewsImpl(
        items: freezed == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<UserViewItems>?,
        totalRecordCount: freezed == totalRecordCount
            ? _value.totalRecordCount
            : totalRecordCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BrowsingLibraryViewsImpl implements _BrowsingLibraryViews {
  const _$BrowsingLibraryViewsImpl({
    @JsonKey(name: 'Items') final List<UserViewItems>? items,
    @JsonKey(name: 'TotalRecordCount') this.totalRecordCount,
  }) : _items = items;

  factory _$BrowsingLibraryViewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrowsingLibraryViewsImplFromJson(json);

  final List<UserViewItems>? _items;
  @override
  @JsonKey(name: 'Items')
  List<UserViewItems>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'TotalRecordCount')
  final int? totalRecordCount;

  @override
  String toString() {
    return 'BrowsingLibraryViews(items: $items, totalRecordCount: $totalRecordCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrowsingLibraryViewsImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalRecordCount, totalRecordCount) ||
                other.totalRecordCount == totalRecordCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    totalRecordCount,
  );

  /// Create a copy of BrowsingLibraryViews
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrowsingLibraryViewsImplCopyWith<_$BrowsingLibraryViewsImpl>
  get copyWith =>
      __$$BrowsingLibraryViewsImplCopyWithImpl<_$BrowsingLibraryViewsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BrowsingLibraryViewsImplToJson(this);
  }
}

abstract class _BrowsingLibraryViews implements BrowsingLibraryViews {
  const factory _BrowsingLibraryViews({
    @JsonKey(name: 'Items') final List<UserViewItems>? items,
    @JsonKey(name: 'TotalRecordCount') final int? totalRecordCount,
  }) = _$BrowsingLibraryViewsImpl;

  factory _BrowsingLibraryViews.fromJson(Map<String, dynamic> json) =
      _$BrowsingLibraryViewsImpl.fromJson;

  @override
  @JsonKey(name: 'Items')
  List<UserViewItems>? get items;
  @override
  @JsonKey(name: 'TotalRecordCount')
  int? get totalRecordCount;

  /// Create a copy of BrowsingLibraryViews
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrowsingLibraryViewsImplCopyWith<_$BrowsingLibraryViewsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserViewItems _$UserViewItemsFromJson(Map<String, dynamic> json) {
  return _UserViewItems.fromJson(json);
}

/// @nodoc
mixin _$UserViewItems {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerId')
  String? get serverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Guid')
  String? get guid => throw _privateConstructorUsedError;
  @JsonKey(name: 'Etag')
  String? get etag => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateCreated')
  String? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'CanDelete')
  bool? get canDelete => throw _privateConstructorUsedError;
  @JsonKey(name: 'CanDownload')
  bool? get canDownload => throw _privateConstructorUsedError;
  @JsonKey(name: 'PresentationUniqueKey')
  String? get presentationUniqueKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'SortName')
  String? get sortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ForcedSortName')
  String? get forcedSortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExternalUrls')
  List<dynamic>? get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'Taglines')
  List<dynamic>? get taglines => throw _privateConstructorUsedError;
  @JsonKey(name: 'RemoteTrailers')
  List<dynamic>? get remoteTrailers => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProviderIds')
  dynamic get providerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsFolder')
  bool? get isFolder => throw _privateConstructorUsedError;
  @JsonKey(name: 'ParentId')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserData')
  Map<String, dynamic>? get userData => throw _privateConstructorUsedError;
  @JsonKey(name: 'ChildCount')
  int? get childCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'DisplayPreferencesId')
  String? get displayPreferencesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PrimaryImageAspectRatio')
  int? get primaryImageAspectRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'ImageTags')
  ImageTagsDto? get imageTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'BackdropImageTags')
  List<dynamic>? get backdropImageTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'LockedFields')
  List<dynamic>? get lockedFields => throw _privateConstructorUsedError;
  @JsonKey(name: 'LockData')
  bool? get lockData => throw _privateConstructorUsedError;

  /// Serializes this UserViewItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserViewItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserViewItemsCopyWith<UserViewItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserViewItemsCopyWith<$Res> {
  factory $UserViewItemsCopyWith(
    UserViewItems value,
    $Res Function(UserViewItems) then,
  ) = _$UserViewItemsCopyWithImpl<$Res, UserViewItems>;
  @useResult
  $Res call({
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
    @JsonKey(name: 'ExternalUrls') List<dynamic>? externalUrls,
    @JsonKey(name: 'Taglines') List<dynamic>? taglines,
    @JsonKey(name: 'RemoteTrailers') List<dynamic>? remoteTrailers,
    @JsonKey(name: 'ProviderIds') dynamic providerIds,
    @JsonKey(name: 'IsFolder') bool? isFolder,
    @JsonKey(name: 'ParentId') String? parentId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'UserData') Map<String, dynamic>? userData,
    @JsonKey(name: 'ChildCount') int? childCount,
    @JsonKey(name: 'DisplayPreferencesId') String? displayPreferencesId,
    @JsonKey(name: 'PrimaryImageAspectRatio') int? primaryImageAspectRatio,
    @JsonKey(name: 'ImageTags') ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') List<dynamic>? backdropImageTags,
    @JsonKey(name: 'LockedFields') List<dynamic>? lockedFields,
    @JsonKey(name: 'LockData') bool? lockData,
  });

  $ImageTagsDtoCopyWith<$Res>? get imageTags;
}

/// @nodoc
class _$UserViewItemsCopyWithImpl<$Res, $Val extends UserViewItems>
    implements $UserViewItemsCopyWith<$Res> {
  _$UserViewItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserViewItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? serverId = freezed,
    Object? id = freezed,
    Object? guid = freezed,
    Object? etag = freezed,
    Object? dateCreated = freezed,
    Object? canDelete = freezed,
    Object? canDownload = freezed,
    Object? presentationUniqueKey = freezed,
    Object? sortName = freezed,
    Object? forcedSortName = freezed,
    Object? externalUrls = freezed,
    Object? taglines = freezed,
    Object? remoteTrailers = freezed,
    Object? providerIds = freezed,
    Object? isFolder = freezed,
    Object? parentId = freezed,
    Object? type = freezed,
    Object? userData = freezed,
    Object? childCount = freezed,
    Object? displayPreferencesId = freezed,
    Object? primaryImageAspectRatio = freezed,
    Object? imageTags = freezed,
    Object? backdropImageTags = freezed,
    Object? lockedFields = freezed,
    Object? lockData = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            serverId: freezed == serverId
                ? _value.serverId
                : serverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            guid: freezed == guid
                ? _value.guid
                : guid // ignore: cast_nullable_to_non_nullable
                      as String?,
            etag: freezed == etag
                ? _value.etag
                : etag // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCreated: freezed == dateCreated
                ? _value.dateCreated
                : dateCreated // ignore: cast_nullable_to_non_nullable
                      as String?,
            canDelete: freezed == canDelete
                ? _value.canDelete
                : canDelete // ignore: cast_nullable_to_non_nullable
                      as bool?,
            canDownload: freezed == canDownload
                ? _value.canDownload
                : canDownload // ignore: cast_nullable_to_non_nullable
                      as bool?,
            presentationUniqueKey: freezed == presentationUniqueKey
                ? _value.presentationUniqueKey
                : presentationUniqueKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            sortName: freezed == sortName
                ? _value.sortName
                : sortName // ignore: cast_nullable_to_non_nullable
                      as String?,
            forcedSortName: freezed == forcedSortName
                ? _value.forcedSortName
                : forcedSortName // ignore: cast_nullable_to_non_nullable
                      as String?,
            externalUrls: freezed == externalUrls
                ? _value.externalUrls
                : externalUrls // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            taglines: freezed == taglines
                ? _value.taglines
                : taglines // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            remoteTrailers: freezed == remoteTrailers
                ? _value.remoteTrailers
                : remoteTrailers // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            providerIds: freezed == providerIds
                ? _value.providerIds
                : providerIds // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            isFolder: freezed == isFolder
                ? _value.isFolder
                : isFolder // ignore: cast_nullable_to_non_nullable
                      as bool?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            userData: freezed == userData
                ? _value.userData
                : userData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            childCount: freezed == childCount
                ? _value.childCount
                : childCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            displayPreferencesId: freezed == displayPreferencesId
                ? _value.displayPreferencesId
                : displayPreferencesId // ignore: cast_nullable_to_non_nullable
                      as String?,
            primaryImageAspectRatio: freezed == primaryImageAspectRatio
                ? _value.primaryImageAspectRatio
                : primaryImageAspectRatio // ignore: cast_nullable_to_non_nullable
                      as int?,
            imageTags: freezed == imageTags
                ? _value.imageTags
                : imageTags // ignore: cast_nullable_to_non_nullable
                      as ImageTagsDto?,
            backdropImageTags: freezed == backdropImageTags
                ? _value.backdropImageTags
                : backdropImageTags // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            lockedFields: freezed == lockedFields
                ? _value.lockedFields
                : lockedFields // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            lockData: freezed == lockData
                ? _value.lockData
                : lockData // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserViewItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageTagsDtoCopyWith<$Res>? get imageTags {
    if (_value.imageTags == null) {
      return null;
    }

    return $ImageTagsDtoCopyWith<$Res>(_value.imageTags!, (value) {
      return _then(_value.copyWith(imageTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserViewItemsImplCopyWith<$Res>
    implements $UserViewItemsCopyWith<$Res> {
  factory _$$UserViewItemsImplCopyWith(
    _$UserViewItemsImpl value,
    $Res Function(_$UserViewItemsImpl) then,
  ) = __$$UserViewItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
    @JsonKey(name: 'ExternalUrls') List<dynamic>? externalUrls,
    @JsonKey(name: 'Taglines') List<dynamic>? taglines,
    @JsonKey(name: 'RemoteTrailers') List<dynamic>? remoteTrailers,
    @JsonKey(name: 'ProviderIds') dynamic providerIds,
    @JsonKey(name: 'IsFolder') bool? isFolder,
    @JsonKey(name: 'ParentId') String? parentId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'UserData') Map<String, dynamic>? userData,
    @JsonKey(name: 'ChildCount') int? childCount,
    @JsonKey(name: 'DisplayPreferencesId') String? displayPreferencesId,
    @JsonKey(name: 'PrimaryImageAspectRatio') int? primaryImageAspectRatio,
    @JsonKey(name: 'ImageTags') ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') List<dynamic>? backdropImageTags,
    @JsonKey(name: 'LockedFields') List<dynamic>? lockedFields,
    @JsonKey(name: 'LockData') bool? lockData,
  });

  @override
  $ImageTagsDtoCopyWith<$Res>? get imageTags;
}

/// @nodoc
class __$$UserViewItemsImplCopyWithImpl<$Res>
    extends _$UserViewItemsCopyWithImpl<$Res, _$UserViewItemsImpl>
    implements _$$UserViewItemsImplCopyWith<$Res> {
  __$$UserViewItemsImplCopyWithImpl(
    _$UserViewItemsImpl _value,
    $Res Function(_$UserViewItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserViewItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? serverId = freezed,
    Object? id = freezed,
    Object? guid = freezed,
    Object? etag = freezed,
    Object? dateCreated = freezed,
    Object? canDelete = freezed,
    Object? canDownload = freezed,
    Object? presentationUniqueKey = freezed,
    Object? sortName = freezed,
    Object? forcedSortName = freezed,
    Object? externalUrls = freezed,
    Object? taglines = freezed,
    Object? remoteTrailers = freezed,
    Object? providerIds = freezed,
    Object? isFolder = freezed,
    Object? parentId = freezed,
    Object? type = freezed,
    Object? userData = freezed,
    Object? childCount = freezed,
    Object? displayPreferencesId = freezed,
    Object? primaryImageAspectRatio = freezed,
    Object? imageTags = freezed,
    Object? backdropImageTags = freezed,
    Object? lockedFields = freezed,
    Object? lockData = freezed,
  }) {
    return _then(
      _$UserViewItemsImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverId: freezed == serverId
            ? _value.serverId
            : serverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        guid: freezed == guid
            ? _value.guid
            : guid // ignore: cast_nullable_to_non_nullable
                  as String?,
        etag: freezed == etag
            ? _value.etag
            : etag // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCreated: freezed == dateCreated
            ? _value.dateCreated
            : dateCreated // ignore: cast_nullable_to_non_nullable
                  as String?,
        canDelete: freezed == canDelete
            ? _value.canDelete
            : canDelete // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canDownload: freezed == canDownload
            ? _value.canDownload
            : canDownload // ignore: cast_nullable_to_non_nullable
                  as bool?,
        presentationUniqueKey: freezed == presentationUniqueKey
            ? _value.presentationUniqueKey
            : presentationUniqueKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        sortName: freezed == sortName
            ? _value.sortName
            : sortName // ignore: cast_nullable_to_non_nullable
                  as String?,
        forcedSortName: freezed == forcedSortName
            ? _value.forcedSortName
            : forcedSortName // ignore: cast_nullable_to_non_nullable
                  as String?,
        externalUrls: freezed == externalUrls
            ? _value._externalUrls
            : externalUrls // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        taglines: freezed == taglines
            ? _value._taglines
            : taglines // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        remoteTrailers: freezed == remoteTrailers
            ? _value._remoteTrailers
            : remoteTrailers // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        providerIds: freezed == providerIds
            ? _value.providerIds
            : providerIds // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        isFolder: freezed == isFolder
            ? _value.isFolder
            : isFolder // ignore: cast_nullable_to_non_nullable
                  as bool?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        userData: freezed == userData
            ? _value._userData
            : userData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        childCount: freezed == childCount
            ? _value.childCount
            : childCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        displayPreferencesId: freezed == displayPreferencesId
            ? _value.displayPreferencesId
            : displayPreferencesId // ignore: cast_nullable_to_non_nullable
                  as String?,
        primaryImageAspectRatio: freezed == primaryImageAspectRatio
            ? _value.primaryImageAspectRatio
            : primaryImageAspectRatio // ignore: cast_nullable_to_non_nullable
                  as int?,
        imageTags: freezed == imageTags
            ? _value.imageTags
            : imageTags // ignore: cast_nullable_to_non_nullable
                  as ImageTagsDto?,
        backdropImageTags: freezed == backdropImageTags
            ? _value._backdropImageTags
            : backdropImageTags // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        lockedFields: freezed == lockedFields
            ? _value._lockedFields
            : lockedFields // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        lockData: freezed == lockData
            ? _value.lockData
            : lockData // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserViewItemsImpl implements _UserViewItems {
  const _$UserViewItemsImpl({
    @JsonKey(name: 'Name') this.name,
    @JsonKey(name: 'ServerId') this.serverId,
    @JsonKey(name: 'Id') this.id,
    @JsonKey(name: 'Guid') this.guid,
    @JsonKey(name: 'Etag') this.etag,
    @JsonKey(name: 'DateCreated') this.dateCreated,
    @JsonKey(name: 'CanDelete') this.canDelete,
    @JsonKey(name: 'CanDownload') this.canDownload,
    @JsonKey(name: 'PresentationUniqueKey') this.presentationUniqueKey,
    @JsonKey(name: 'SortName') this.sortName,
    @JsonKey(name: 'ForcedSortName') this.forcedSortName,
    @JsonKey(name: 'ExternalUrls') final List<dynamic>? externalUrls,
    @JsonKey(name: 'Taglines') final List<dynamic>? taglines,
    @JsonKey(name: 'RemoteTrailers') final List<dynamic>? remoteTrailers,
    @JsonKey(name: 'ProviderIds') this.providerIds,
    @JsonKey(name: 'IsFolder') this.isFolder,
    @JsonKey(name: 'ParentId') this.parentId,
    @JsonKey(name: 'Type') this.type,
    @JsonKey(name: 'UserData') final Map<String, dynamic>? userData,
    @JsonKey(name: 'ChildCount') this.childCount,
    @JsonKey(name: 'DisplayPreferencesId') this.displayPreferencesId,
    @JsonKey(name: 'PrimaryImageAspectRatio') this.primaryImageAspectRatio,
    @JsonKey(name: 'ImageTags') this.imageTags,
    @JsonKey(name: 'BackdropImageTags') final List<dynamic>? backdropImageTags,
    @JsonKey(name: 'LockedFields') final List<dynamic>? lockedFields,
    @JsonKey(name: 'LockData') this.lockData,
  }) : _externalUrls = externalUrls,
       _taglines = taglines,
       _remoteTrailers = remoteTrailers,
       _userData = userData,
       _backdropImageTags = backdropImageTags,
       _lockedFields = lockedFields;

  factory _$UserViewItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserViewItemsImplFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'ServerId')
  final String? serverId;
  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'Guid')
  final String? guid;
  @override
  @JsonKey(name: 'Etag')
  final String? etag;
  @override
  @JsonKey(name: 'DateCreated')
  final String? dateCreated;
  @override
  @JsonKey(name: 'CanDelete')
  final bool? canDelete;
  @override
  @JsonKey(name: 'CanDownload')
  final bool? canDownload;
  @override
  @JsonKey(name: 'PresentationUniqueKey')
  final String? presentationUniqueKey;
  @override
  @JsonKey(name: 'SortName')
  final String? sortName;
  @override
  @JsonKey(name: 'ForcedSortName')
  final String? forcedSortName;
  final List<dynamic>? _externalUrls;
  @override
  @JsonKey(name: 'ExternalUrls')
  List<dynamic>? get externalUrls {
    final value = _externalUrls;
    if (value == null) return null;
    if (_externalUrls is EqualUnmodifiableListView) return _externalUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _taglines;
  @override
  @JsonKey(name: 'Taglines')
  List<dynamic>? get taglines {
    final value = _taglines;
    if (value == null) return null;
    if (_taglines is EqualUnmodifiableListView) return _taglines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _remoteTrailers;
  @override
  @JsonKey(name: 'RemoteTrailers')
  List<dynamic>? get remoteTrailers {
    final value = _remoteTrailers;
    if (value == null) return null;
    if (_remoteTrailers is EqualUnmodifiableListView) return _remoteTrailers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'ProviderIds')
  final dynamic providerIds;
  @override
  @JsonKey(name: 'IsFolder')
  final bool? isFolder;
  @override
  @JsonKey(name: 'ParentId')
  final String? parentId;
  @override
  @JsonKey(name: 'Type')
  final String? type;
  final Map<String, dynamic>? _userData;
  @override
  @JsonKey(name: 'UserData')
  Map<String, dynamic>? get userData {
    final value = _userData;
    if (value == null) return null;
    if (_userData is EqualUnmodifiableMapView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'ChildCount')
  final int? childCount;
  @override
  @JsonKey(name: 'DisplayPreferencesId')
  final String? displayPreferencesId;
  @override
  @JsonKey(name: 'PrimaryImageAspectRatio')
  final int? primaryImageAspectRatio;
  @override
  @JsonKey(name: 'ImageTags')
  final ImageTagsDto? imageTags;
  final List<dynamic>? _backdropImageTags;
  @override
  @JsonKey(name: 'BackdropImageTags')
  List<dynamic>? get backdropImageTags {
    final value = _backdropImageTags;
    if (value == null) return null;
    if (_backdropImageTags is EqualUnmodifiableListView)
      return _backdropImageTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _lockedFields;
  @override
  @JsonKey(name: 'LockedFields')
  List<dynamic>? get lockedFields {
    final value = _lockedFields;
    if (value == null) return null;
    if (_lockedFields is EqualUnmodifiableListView) return _lockedFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'LockData')
  final bool? lockData;

  @override
  String toString() {
    return 'UserViewItems(name: $name, serverId: $serverId, id: $id, guid: $guid, etag: $etag, dateCreated: $dateCreated, canDelete: $canDelete, canDownload: $canDownload, presentationUniqueKey: $presentationUniqueKey, sortName: $sortName, forcedSortName: $forcedSortName, externalUrls: $externalUrls, taglines: $taglines, remoteTrailers: $remoteTrailers, providerIds: $providerIds, isFolder: $isFolder, parentId: $parentId, type: $type, userData: $userData, childCount: $childCount, displayPreferencesId: $displayPreferencesId, primaryImageAspectRatio: $primaryImageAspectRatio, imageTags: $imageTags, backdropImageTags: $backdropImageTags, lockedFields: $lockedFields, lockData: $lockData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserViewItemsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.canDelete, canDelete) ||
                other.canDelete == canDelete) &&
            (identical(other.canDownload, canDownload) ||
                other.canDownload == canDownload) &&
            (identical(other.presentationUniqueKey, presentationUniqueKey) ||
                other.presentationUniqueKey == presentationUniqueKey) &&
            (identical(other.sortName, sortName) ||
                other.sortName == sortName) &&
            (identical(other.forcedSortName, forcedSortName) ||
                other.forcedSortName == forcedSortName) &&
            const DeepCollectionEquality().equals(
              other._externalUrls,
              _externalUrls,
            ) &&
            const DeepCollectionEquality().equals(other._taglines, _taglines) &&
            const DeepCollectionEquality().equals(
              other._remoteTrailers,
              _remoteTrailers,
            ) &&
            const DeepCollectionEquality().equals(
              other.providerIds,
              providerIds,
            ) &&
            (identical(other.isFolder, isFolder) ||
                other.isFolder == isFolder) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            (identical(other.childCount, childCount) ||
                other.childCount == childCount) &&
            (identical(other.displayPreferencesId, displayPreferencesId) ||
                other.displayPreferencesId == displayPreferencesId) &&
            (identical(
                  other.primaryImageAspectRatio,
                  primaryImageAspectRatio,
                ) ||
                other.primaryImageAspectRatio == primaryImageAspectRatio) &&
            (identical(other.imageTags, imageTags) ||
                other.imageTags == imageTags) &&
            const DeepCollectionEquality().equals(
              other._backdropImageTags,
              _backdropImageTags,
            ) &&
            const DeepCollectionEquality().equals(
              other._lockedFields,
              _lockedFields,
            ) &&
            (identical(other.lockData, lockData) ||
                other.lockData == lockData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    name,
    serverId,
    id,
    guid,
    etag,
    dateCreated,
    canDelete,
    canDownload,
    presentationUniqueKey,
    sortName,
    forcedSortName,
    const DeepCollectionEquality().hash(_externalUrls),
    const DeepCollectionEquality().hash(_taglines),
    const DeepCollectionEquality().hash(_remoteTrailers),
    const DeepCollectionEquality().hash(providerIds),
    isFolder,
    parentId,
    type,
    const DeepCollectionEquality().hash(_userData),
    childCount,
    displayPreferencesId,
    primaryImageAspectRatio,
    imageTags,
    const DeepCollectionEquality().hash(_backdropImageTags),
    const DeepCollectionEquality().hash(_lockedFields),
    lockData,
  ]);

  /// Create a copy of UserViewItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserViewItemsImplCopyWith<_$UserViewItemsImpl> get copyWith =>
      __$$UserViewItemsImplCopyWithImpl<_$UserViewItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserViewItemsImplToJson(this);
  }
}

abstract class _UserViewItems implements UserViewItems {
  const factory _UserViewItems({
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'ServerId') final String? serverId,
    @JsonKey(name: 'Id') final String? id,
    @JsonKey(name: 'Guid') final String? guid,
    @JsonKey(name: 'Etag') final String? etag,
    @JsonKey(name: 'DateCreated') final String? dateCreated,
    @JsonKey(name: 'CanDelete') final bool? canDelete,
    @JsonKey(name: 'CanDownload') final bool? canDownload,
    @JsonKey(name: 'PresentationUniqueKey') final String? presentationUniqueKey,
    @JsonKey(name: 'SortName') final String? sortName,
    @JsonKey(name: 'ForcedSortName') final String? forcedSortName,
    @JsonKey(name: 'ExternalUrls') final List<dynamic>? externalUrls,
    @JsonKey(name: 'Taglines') final List<dynamic>? taglines,
    @JsonKey(name: 'RemoteTrailers') final List<dynamic>? remoteTrailers,
    @JsonKey(name: 'ProviderIds') final dynamic providerIds,
    @JsonKey(name: 'IsFolder') final bool? isFolder,
    @JsonKey(name: 'ParentId') final String? parentId,
    @JsonKey(name: 'Type') final String? type,
    @JsonKey(name: 'UserData') final Map<String, dynamic>? userData,
    @JsonKey(name: 'ChildCount') final int? childCount,
    @JsonKey(name: 'DisplayPreferencesId') final String? displayPreferencesId,
    @JsonKey(name: 'PrimaryImageAspectRatio')
    final int? primaryImageAspectRatio,
    @JsonKey(name: 'ImageTags') final ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') final List<dynamic>? backdropImageTags,
    @JsonKey(name: 'LockedFields') final List<dynamic>? lockedFields,
    @JsonKey(name: 'LockData') final bool? lockData,
  }) = _$UserViewItemsImpl;

  factory _UserViewItems.fromJson(Map<String, dynamic> json) =
      _$UserViewItemsImpl.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'ServerId')
  String? get serverId;
  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'Guid')
  String? get guid;
  @override
  @JsonKey(name: 'Etag')
  String? get etag;
  @override
  @JsonKey(name: 'DateCreated')
  String? get dateCreated;
  @override
  @JsonKey(name: 'CanDelete')
  bool? get canDelete;
  @override
  @JsonKey(name: 'CanDownload')
  bool? get canDownload;
  @override
  @JsonKey(name: 'PresentationUniqueKey')
  String? get presentationUniqueKey;
  @override
  @JsonKey(name: 'SortName')
  String? get sortName;
  @override
  @JsonKey(name: 'ForcedSortName')
  String? get forcedSortName;
  @override
  @JsonKey(name: 'ExternalUrls')
  List<dynamic>? get externalUrls;
  @override
  @JsonKey(name: 'Taglines')
  List<dynamic>? get taglines;
  @override
  @JsonKey(name: 'RemoteTrailers')
  List<dynamic>? get remoteTrailers;
  @override
  @JsonKey(name: 'ProviderIds')
  dynamic get providerIds;
  @override
  @JsonKey(name: 'IsFolder')
  bool? get isFolder;
  @override
  @JsonKey(name: 'ParentId')
  String? get parentId;
  @override
  @JsonKey(name: 'Type')
  String? get type;
  @override
  @JsonKey(name: 'UserData')
  Map<String, dynamic>? get userData;
  @override
  @JsonKey(name: 'ChildCount')
  int? get childCount;
  @override
  @JsonKey(name: 'DisplayPreferencesId')
  String? get displayPreferencesId;
  @override
  @JsonKey(name: 'PrimaryImageAspectRatio')
  int? get primaryImageAspectRatio;
  @override
  @JsonKey(name: 'ImageTags')
  ImageTagsDto? get imageTags;
  @override
  @JsonKey(name: 'BackdropImageTags')
  List<dynamic>? get backdropImageTags;
  @override
  @JsonKey(name: 'LockedFields')
  List<dynamic>? get lockedFields;
  @override
  @JsonKey(name: 'LockData')
  bool? get lockData;

  /// Create a copy of UserViewItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserViewItemsImplCopyWith<_$UserViewItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserItemInfo _$UserItemInfoFromJson(Map<String, dynamic> json) {
  return _UserItemInfo.fromJson(json);
}

/// @nodoc
mixin _$UserItemInfo {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerId')
  String? get serverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Guid')
  String? get guid => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateCreated')
  String? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsFolder')
  bool? get isFolder => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserData')
  Map<String, dynamic>? get userData => throw _privateConstructorUsedError;
  @JsonKey(name: 'ImageTags')
  ImageTagsDto? get imageTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'BackdropImageTags')
  List<dynamic>? get backdropImageTags => throw _privateConstructorUsedError;

  /// Serializes this UserItemInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserItemInfoCopyWith<UserItemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserItemInfoCopyWith<$Res> {
  factory $UserItemInfoCopyWith(
    UserItemInfo value,
    $Res Function(UserItemInfo) then,
  ) = _$UserItemInfoCopyWithImpl<$Res, UserItemInfo>;
  @useResult
  $Res call({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Guid') String? guid,
    @JsonKey(name: 'DateCreated') String? dateCreated,
    @JsonKey(name: 'IsFolder') bool? isFolder,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'UserData') Map<String, dynamic>? userData,
    @JsonKey(name: 'ImageTags') ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') List<dynamic>? backdropImageTags,
  });

  $ImageTagsDtoCopyWith<$Res>? get imageTags;
}

/// @nodoc
class _$UserItemInfoCopyWithImpl<$Res, $Val extends UserItemInfo>
    implements $UserItemInfoCopyWith<$Res> {
  _$UserItemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? serverId = freezed,
    Object? id = freezed,
    Object? guid = freezed,
    Object? dateCreated = freezed,
    Object? isFolder = freezed,
    Object? type = freezed,
    Object? userData = freezed,
    Object? imageTags = freezed,
    Object? backdropImageTags = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            serverId: freezed == serverId
                ? _value.serverId
                : serverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            guid: freezed == guid
                ? _value.guid
                : guid // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCreated: freezed == dateCreated
                ? _value.dateCreated
                : dateCreated // ignore: cast_nullable_to_non_nullable
                      as String?,
            isFolder: freezed == isFolder
                ? _value.isFolder
                : isFolder // ignore: cast_nullable_to_non_nullable
                      as bool?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            userData: freezed == userData
                ? _value.userData
                : userData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            imageTags: freezed == imageTags
                ? _value.imageTags
                : imageTags // ignore: cast_nullable_to_non_nullable
                      as ImageTagsDto?,
            backdropImageTags: freezed == backdropImageTags
                ? _value.backdropImageTags
                : backdropImageTags // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageTagsDtoCopyWith<$Res>? get imageTags {
    if (_value.imageTags == null) {
      return null;
    }

    return $ImageTagsDtoCopyWith<$Res>(_value.imageTags!, (value) {
      return _then(_value.copyWith(imageTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserItemInfoImplCopyWith<$Res>
    implements $UserItemInfoCopyWith<$Res> {
  factory _$$UserItemInfoImplCopyWith(
    _$UserItemInfoImpl value,
    $Res Function(_$UserItemInfoImpl) then,
  ) = __$$UserItemInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Guid') String? guid,
    @JsonKey(name: 'DateCreated') String? dateCreated,
    @JsonKey(name: 'IsFolder') bool? isFolder,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'UserData') Map<String, dynamic>? userData,
    @JsonKey(name: 'ImageTags') ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') List<dynamic>? backdropImageTags,
  });

  @override
  $ImageTagsDtoCopyWith<$Res>? get imageTags;
}

/// @nodoc
class __$$UserItemInfoImplCopyWithImpl<$Res>
    extends _$UserItemInfoCopyWithImpl<$Res, _$UserItemInfoImpl>
    implements _$$UserItemInfoImplCopyWith<$Res> {
  __$$UserItemInfoImplCopyWithImpl(
    _$UserItemInfoImpl _value,
    $Res Function(_$UserItemInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? serverId = freezed,
    Object? id = freezed,
    Object? guid = freezed,
    Object? dateCreated = freezed,
    Object? isFolder = freezed,
    Object? type = freezed,
    Object? userData = freezed,
    Object? imageTags = freezed,
    Object? backdropImageTags = freezed,
  }) {
    return _then(
      _$UserItemInfoImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverId: freezed == serverId
            ? _value.serverId
            : serverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        guid: freezed == guid
            ? _value.guid
            : guid // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCreated: freezed == dateCreated
            ? _value.dateCreated
            : dateCreated // ignore: cast_nullable_to_non_nullable
                  as String?,
        isFolder: freezed == isFolder
            ? _value.isFolder
            : isFolder // ignore: cast_nullable_to_non_nullable
                  as bool?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        userData: freezed == userData
            ? _value._userData
            : userData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        imageTags: freezed == imageTags
            ? _value.imageTags
            : imageTags // ignore: cast_nullable_to_non_nullable
                  as ImageTagsDto?,
        backdropImageTags: freezed == backdropImageTags
            ? _value._backdropImageTags
            : backdropImageTags // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserItemInfoImpl implements _UserItemInfo {
  const _$UserItemInfoImpl({
    @JsonKey(name: 'Name') this.name,
    @JsonKey(name: 'ServerId') this.serverId,
    @JsonKey(name: 'Id') this.id,
    @JsonKey(name: 'Guid') this.guid,
    @JsonKey(name: 'DateCreated') this.dateCreated,
    @JsonKey(name: 'IsFolder') this.isFolder,
    @JsonKey(name: 'Type') this.type,
    @JsonKey(name: 'UserData') final Map<String, dynamic>? userData,
    @JsonKey(name: 'ImageTags') this.imageTags,
    @JsonKey(name: 'BackdropImageTags') final List<dynamic>? backdropImageTags,
  }) : _userData = userData,
       _backdropImageTags = backdropImageTags;

  factory _$UserItemInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserItemInfoImplFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'ServerId')
  final String? serverId;
  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'Guid')
  final String? guid;
  @override
  @JsonKey(name: 'DateCreated')
  final String? dateCreated;
  @override
  @JsonKey(name: 'IsFolder')
  final bool? isFolder;
  @override
  @JsonKey(name: 'Type')
  final String? type;
  final Map<String, dynamic>? _userData;
  @override
  @JsonKey(name: 'UserData')
  Map<String, dynamic>? get userData {
    final value = _userData;
    if (value == null) return null;
    if (_userData is EqualUnmodifiableMapView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'ImageTags')
  final ImageTagsDto? imageTags;
  final List<dynamic>? _backdropImageTags;
  @override
  @JsonKey(name: 'BackdropImageTags')
  List<dynamic>? get backdropImageTags {
    final value = _backdropImageTags;
    if (value == null) return null;
    if (_backdropImageTags is EqualUnmodifiableListView)
      return _backdropImageTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserItemInfo(name: $name, serverId: $serverId, id: $id, guid: $guid, dateCreated: $dateCreated, isFolder: $isFolder, type: $type, userData: $userData, imageTags: $imageTags, backdropImageTags: $backdropImageTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserItemInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.isFolder, isFolder) ||
                other.isFolder == isFolder) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            (identical(other.imageTags, imageTags) ||
                other.imageTags == imageTags) &&
            const DeepCollectionEquality().equals(
              other._backdropImageTags,
              _backdropImageTags,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    serverId,
    id,
    guid,
    dateCreated,
    isFolder,
    type,
    const DeepCollectionEquality().hash(_userData),
    imageTags,
    const DeepCollectionEquality().hash(_backdropImageTags),
  );

  /// Create a copy of UserItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserItemInfoImplCopyWith<_$UserItemInfoImpl> get copyWith =>
      __$$UserItemInfoImplCopyWithImpl<_$UserItemInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserItemInfoImplToJson(this);
  }
}

abstract class _UserItemInfo implements UserItemInfo {
  const factory _UserItemInfo({
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'ServerId') final String? serverId,
    @JsonKey(name: 'Id') final String? id,
    @JsonKey(name: 'Guid') final String? guid,
    @JsonKey(name: 'DateCreated') final String? dateCreated,
    @JsonKey(name: 'IsFolder') final bool? isFolder,
    @JsonKey(name: 'Type') final String? type,
    @JsonKey(name: 'UserData') final Map<String, dynamic>? userData,
    @JsonKey(name: 'ImageTags') final ImageTagsDto? imageTags,
    @JsonKey(name: 'BackdropImageTags') final List<dynamic>? backdropImageTags,
  }) = _$UserItemInfoImpl;

  factory _UserItemInfo.fromJson(Map<String, dynamic> json) =
      _$UserItemInfoImpl.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'ServerId')
  String? get serverId;
  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'Guid')
  String? get guid;
  @override
  @JsonKey(name: 'DateCreated')
  String? get dateCreated;
  @override
  @JsonKey(name: 'IsFolder')
  bool? get isFolder;
  @override
  @JsonKey(name: 'Type')
  String? get type;
  @override
  @JsonKey(name: 'UserData')
  Map<String, dynamic>? get userData;
  @override
  @JsonKey(name: 'ImageTags')
  ImageTagsDto? get imageTags;
  @override
  @JsonKey(name: 'BackdropImageTags')
  List<dynamic>? get backdropImageTags;

  /// Create a copy of UserItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserItemInfoImplCopyWith<_$UserItemInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageTagsDto _$ImageTagsDtoFromJson(Map<String, dynamic> json) {
  return _ImageTagsDto.fromJson(json);
}

/// @nodoc
mixin _$ImageTagsDto {
  @JsonKey(name: 'Primary')
  String? get primary => throw _privateConstructorUsedError;

  /// Serializes this ImageTagsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageTagsDtoCopyWith<ImageTagsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageTagsDtoCopyWith<$Res> {
  factory $ImageTagsDtoCopyWith(
    ImageTagsDto value,
    $Res Function(ImageTagsDto) then,
  ) = _$ImageTagsDtoCopyWithImpl<$Res, ImageTagsDto>;
  @useResult
  $Res call({@JsonKey(name: 'Primary') String? primary});
}

/// @nodoc
class _$ImageTagsDtoCopyWithImpl<$Res, $Val extends ImageTagsDto>
    implements $ImageTagsDtoCopyWith<$Res> {
  _$ImageTagsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? primary = freezed}) {
    return _then(
      _value.copyWith(
            primary: freezed == primary
                ? _value.primary
                : primary // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageTagsDtoImplCopyWith<$Res>
    implements $ImageTagsDtoCopyWith<$Res> {
  factory _$$ImageTagsDtoImplCopyWith(
    _$ImageTagsDtoImpl value,
    $Res Function(_$ImageTagsDtoImpl) then,
  ) = __$$ImageTagsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Primary') String? primary});
}

/// @nodoc
class __$$ImageTagsDtoImplCopyWithImpl<$Res>
    extends _$ImageTagsDtoCopyWithImpl<$Res, _$ImageTagsDtoImpl>
    implements _$$ImageTagsDtoImplCopyWith<$Res> {
  __$$ImageTagsDtoImplCopyWithImpl(
    _$ImageTagsDtoImpl _value,
    $Res Function(_$ImageTagsDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? primary = freezed}) {
    return _then(
      _$ImageTagsDtoImpl(
        primary: freezed == primary
            ? _value.primary
            : primary // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageTagsDtoImpl implements _ImageTagsDto {
  const _$ImageTagsDtoImpl({@JsonKey(name: 'Primary') this.primary});

  factory _$ImageTagsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageTagsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'Primary')
  final String? primary;

  @override
  String toString() {
    return 'ImageTagsDto(primary: $primary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageTagsDtoImpl &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, primary);

  /// Create a copy of ImageTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageTagsDtoImplCopyWith<_$ImageTagsDtoImpl> get copyWith =>
      __$$ImageTagsDtoImplCopyWithImpl<_$ImageTagsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageTagsDtoImplToJson(this);
  }
}

abstract class _ImageTagsDto implements ImageTagsDto {
  const factory _ImageTagsDto({
    @JsonKey(name: 'Primary') final String? primary,
  }) = _$ImageTagsDtoImpl;

  factory _ImageTagsDto.fromJson(Map<String, dynamic> json) =
      _$ImageTagsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'Primary')
  String? get primary;

  /// Create a copy of ImageTagsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageTagsDtoImplCopyWith<_$ImageTagsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
