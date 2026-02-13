// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_info_public_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SystemInfoPublicResponseDto _$SystemInfoPublicResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _SystemInfoPublicResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SystemInfoPublicResponseDto {
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'LocalAddresses')
  List<String>? get localAddresses => throw _privateConstructorUsedError;
  @JsonKey(name: 'RemoteAddresses')
  List<String>? get remoteAddresses => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerName')
  String? get localAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'Version')
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this SystemInfoPublicResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemInfoPublicResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemInfoPublicResponseDtoCopyWith<SystemInfoPublicResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemInfoPublicResponseDtoCopyWith<$Res> {
  factory $SystemInfoPublicResponseDtoCopyWith(
    SystemInfoPublicResponseDto value,
    $Res Function(SystemInfoPublicResponseDto) then,
  ) =
      _$SystemInfoPublicResponseDtoCopyWithImpl<
        $Res,
        SystemInfoPublicResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'LocalAddresses') List<String>? localAddresses,
    @JsonKey(name: 'RemoteAddresses') List<String>? remoteAddresses,
    @JsonKey(name: 'ServerName') String? localAddress,
    @JsonKey(name: 'Version') String? version,
  });
}

/// @nodoc
class _$SystemInfoPublicResponseDtoCopyWithImpl<
  $Res,
  $Val extends SystemInfoPublicResponseDto
>
    implements $SystemInfoPublicResponseDtoCopyWith<$Res> {
  _$SystemInfoPublicResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemInfoPublicResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? localAddresses = freezed,
    Object? remoteAddresses = freezed,
    Object? localAddress = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            localAddresses: freezed == localAddresses
                ? _value.localAddresses
                : localAddresses // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            remoteAddresses: freezed == remoteAddresses
                ? _value.remoteAddresses
                : remoteAddresses // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            localAddress: freezed == localAddress
                ? _value.localAddress
                : localAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SystemInfoPublicResponseDtoImplCopyWith<$Res>
    implements $SystemInfoPublicResponseDtoCopyWith<$Res> {
  factory _$$SystemInfoPublicResponseDtoImplCopyWith(
    _$SystemInfoPublicResponseDtoImpl value,
    $Res Function(_$SystemInfoPublicResponseDtoImpl) then,
  ) = __$$SystemInfoPublicResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'LocalAddresses') List<String>? localAddresses,
    @JsonKey(name: 'RemoteAddresses') List<String>? remoteAddresses,
    @JsonKey(name: 'ServerName') String? localAddress,
    @JsonKey(name: 'Version') String? version,
  });
}

/// @nodoc
class __$$SystemInfoPublicResponseDtoImplCopyWithImpl<$Res>
    extends
        _$SystemInfoPublicResponseDtoCopyWithImpl<
          $Res,
          _$SystemInfoPublicResponseDtoImpl
        >
    implements _$$SystemInfoPublicResponseDtoImplCopyWith<$Res> {
  __$$SystemInfoPublicResponseDtoImplCopyWithImpl(
    _$SystemInfoPublicResponseDtoImpl _value,
    $Res Function(_$SystemInfoPublicResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemInfoPublicResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? localAddresses = freezed,
    Object? remoteAddresses = freezed,
    Object? localAddress = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _$SystemInfoPublicResponseDtoImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        localAddresses: freezed == localAddresses
            ? _value._localAddresses
            : localAddresses // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        remoteAddresses: freezed == remoteAddresses
            ? _value._remoteAddresses
            : remoteAddresses // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        localAddress: freezed == localAddress
            ? _value.localAddress
            : localAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemInfoPublicResponseDtoImpl
    implements _SystemInfoPublicResponseDto {
  const _$SystemInfoPublicResponseDtoImpl({
    @JsonKey(name: 'Id') this.id,
    @JsonKey(name: 'LocalAddresses') final List<String>? localAddresses,
    @JsonKey(name: 'RemoteAddresses') final List<String>? remoteAddresses,
    @JsonKey(name: 'ServerName') this.localAddress,
    @JsonKey(name: 'Version') this.version,
  }) : _localAddresses = localAddresses,
       _remoteAddresses = remoteAddresses;

  factory _$SystemInfoPublicResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$SystemInfoPublicResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String? id;
  final List<String>? _localAddresses;
  @override
  @JsonKey(name: 'LocalAddresses')
  List<String>? get localAddresses {
    final value = _localAddresses;
    if (value == null) return null;
    if (_localAddresses is EqualUnmodifiableListView) return _localAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _remoteAddresses;
  @override
  @JsonKey(name: 'RemoteAddresses')
  List<String>? get remoteAddresses {
    final value = _remoteAddresses;
    if (value == null) return null;
    if (_remoteAddresses is EqualUnmodifiableListView) return _remoteAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'ServerName')
  final String? localAddress;
  @override
  @JsonKey(name: 'Version')
  final String? version;

  @override
  String toString() {
    return 'SystemInfoPublicResponseDto(id: $id, localAddresses: $localAddresses, remoteAddresses: $remoteAddresses, localAddress: $localAddress, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemInfoPublicResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(
              other._localAddresses,
              _localAddresses,
            ) &&
            const DeepCollectionEquality().equals(
              other._remoteAddresses,
              _remoteAddresses,
            ) &&
            (identical(other.localAddress, localAddress) ||
                other.localAddress == localAddress) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_localAddresses),
    const DeepCollectionEquality().hash(_remoteAddresses),
    localAddress,
    version,
  );

  /// Create a copy of SystemInfoPublicResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemInfoPublicResponseDtoImplCopyWith<_$SystemInfoPublicResponseDtoImpl>
  get copyWith =>
      __$$SystemInfoPublicResponseDtoImplCopyWithImpl<
        _$SystemInfoPublicResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemInfoPublicResponseDtoImplToJson(this);
  }
}

abstract class _SystemInfoPublicResponseDto
    implements SystemInfoPublicResponseDto {
  const factory _SystemInfoPublicResponseDto({
    @JsonKey(name: 'Id') final String? id,
    @JsonKey(name: 'LocalAddresses') final List<String>? localAddresses,
    @JsonKey(name: 'RemoteAddresses') final List<String>? remoteAddresses,
    @JsonKey(name: 'ServerName') final String? localAddress,
    @JsonKey(name: 'Version') final String? version,
  }) = _$SystemInfoPublicResponseDtoImpl;

  factory _SystemInfoPublicResponseDto.fromJson(Map<String, dynamic> json) =
      _$SystemInfoPublicResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'LocalAddresses')
  List<String>? get localAddresses;
  @override
  @JsonKey(name: 'RemoteAddresses')
  List<String>? get remoteAddresses;
  @override
  @JsonKey(name: 'ServerName')
  String? get localAddress;
  @override
  @JsonKey(name: 'Version')
  String? get version;

  /// Create a copy of SystemInfoPublicResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemInfoPublicResponseDtoImplCopyWith<_$SystemInfoPublicResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
