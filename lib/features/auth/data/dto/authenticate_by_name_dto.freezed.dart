// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_by_name_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthenticateByNameResponseDto _$AuthenticateByNameResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AuthenticateByNameResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateByNameResponseDto {
  @JsonKey(name: 'AccessToken')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerId')
  String? get serverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'User')
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'SessionInfo')
  String? get localAddress => throw _privateConstructorUsedError;

  /// Serializes this AuthenticateByNameResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticateByNameResponseDtoCopyWith<AuthenticateByNameResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateByNameResponseDtoCopyWith<$Res> {
  factory $AuthenticateByNameResponseDtoCopyWith(
    AuthenticateByNameResponseDto value,
    $Res Function(AuthenticateByNameResponseDto) then,
  ) =
      _$AuthenticateByNameResponseDtoCopyWithImpl<
        $Res,
        AuthenticateByNameResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'AccessToken') String? accessToken,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'User') String? version,
    @JsonKey(name: 'SessionInfo') String? localAddress,
  });
}

/// @nodoc
class _$AuthenticateByNameResponseDtoCopyWithImpl<
  $Res,
  $Val extends AuthenticateByNameResponseDto
>
    implements $AuthenticateByNameResponseDtoCopyWith<$Res> {
  _$AuthenticateByNameResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? serverId = freezed,
    Object? version = freezed,
    Object? localAddress = freezed,
  }) {
    return _then(
      _value.copyWith(
            accessToken: freezed == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            serverId: freezed == serverId
                ? _value.serverId
                : serverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
            localAddress: freezed == localAddress
                ? _value.localAddress
                : localAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthenticateByNameResponseDtoImplCopyWith<$Res>
    implements $AuthenticateByNameResponseDtoCopyWith<$Res> {
  factory _$$AuthenticateByNameResponseDtoImplCopyWith(
    _$AuthenticateByNameResponseDtoImpl value,
    $Res Function(_$AuthenticateByNameResponseDtoImpl) then,
  ) = __$$AuthenticateByNameResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'AccessToken') String? accessToken,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'User') String? version,
    @JsonKey(name: 'SessionInfo') String? localAddress,
  });
}

/// @nodoc
class __$$AuthenticateByNameResponseDtoImplCopyWithImpl<$Res>
    extends
        _$AuthenticateByNameResponseDtoCopyWithImpl<
          $Res,
          _$AuthenticateByNameResponseDtoImpl
        >
    implements _$$AuthenticateByNameResponseDtoImplCopyWith<$Res> {
  __$$AuthenticateByNameResponseDtoImplCopyWithImpl(
    _$AuthenticateByNameResponseDtoImpl _value,
    $Res Function(_$AuthenticateByNameResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? serverId = freezed,
    Object? version = freezed,
    Object? localAddress = freezed,
  }) {
    return _then(
      _$AuthenticateByNameResponseDtoImpl(
        accessToken: freezed == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverId: freezed == serverId
            ? _value.serverId
            : serverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
        localAddress: freezed == localAddress
            ? _value.localAddress
            : localAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateByNameResponseDtoImpl
    implements _AuthenticateByNameResponseDto {
  const _$AuthenticateByNameResponseDtoImpl({
    @JsonKey(name: 'AccessToken') this.accessToken,
    @JsonKey(name: 'ServerId') this.serverId,
    @JsonKey(name: 'User') this.version,
    @JsonKey(name: 'SessionInfo') this.localAddress,
  });

  factory _$AuthenticateByNameResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AuthenticateByNameResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'AccessToken')
  final String? accessToken;
  @override
  @JsonKey(name: 'ServerId')
  final String? serverId;
  @override
  @JsonKey(name: 'User')
  final String? version;
  @override
  @JsonKey(name: 'SessionInfo')
  final String? localAddress;

  @override
  String toString() {
    return 'AuthenticateByNameResponseDto(accessToken: $accessToken, serverId: $serverId, version: $version, localAddress: $localAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateByNameResponseDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.localAddress, localAddress) ||
                other.localAddress == localAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, serverId, version, localAddress);

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateByNameResponseDtoImplCopyWith<
    _$AuthenticateByNameResponseDtoImpl
  >
  get copyWith =>
      __$$AuthenticateByNameResponseDtoImplCopyWithImpl<
        _$AuthenticateByNameResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateByNameResponseDtoImplToJson(this);
  }
}

abstract class _AuthenticateByNameResponseDto
    implements AuthenticateByNameResponseDto {
  const factory _AuthenticateByNameResponseDto({
    @JsonKey(name: 'AccessToken') final String? accessToken,
    @JsonKey(name: 'ServerId') final String? serverId,
    @JsonKey(name: 'User') final String? version,
    @JsonKey(name: 'SessionInfo') final String? localAddress,
  }) = _$AuthenticateByNameResponseDtoImpl;

  factory _AuthenticateByNameResponseDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticateByNameResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'AccessToken')
  String? get accessToken;
  @override
  @JsonKey(name: 'ServerId')
  String? get serverId;
  @override
  @JsonKey(name: 'User')
  String? get version;
  @override
  @JsonKey(name: 'SessionInfo')
  String? get localAddress;

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateByNameResponseDtoImplCopyWith<
    _$AuthenticateByNameResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
