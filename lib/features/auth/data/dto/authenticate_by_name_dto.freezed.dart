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
  AuthenticateUserDto? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'SessionInfo')
  AuthenticateSessionInfoDto? get sessionInfo =>
      throw _privateConstructorUsedError;

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
    @JsonKey(name: 'User') AuthenticateUserDto? user,
    @JsonKey(name: 'SessionInfo') AuthenticateSessionInfoDto? sessionInfo,
  });

  $AuthenticateUserDtoCopyWith<$Res>? get user;
  $AuthenticateSessionInfoDtoCopyWith<$Res>? get sessionInfo;
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
    Object? user = freezed,
    Object? sessionInfo = freezed,
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
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as AuthenticateUserDto?,
            sessionInfo: freezed == sessionInfo
                ? _value.sessionInfo
                : sessionInfo // ignore: cast_nullable_to_non_nullable
                      as AuthenticateSessionInfoDto?,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticateUserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AuthenticateUserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticateSessionInfoDtoCopyWith<$Res>? get sessionInfo {
    if (_value.sessionInfo == null) {
      return null;
    }

    return $AuthenticateSessionInfoDtoCopyWith<$Res>(_value.sessionInfo!, (
      value,
    ) {
      return _then(_value.copyWith(sessionInfo: value) as $Val);
    });
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
    @JsonKey(name: 'User') AuthenticateUserDto? user,
    @JsonKey(name: 'SessionInfo') AuthenticateSessionInfoDto? sessionInfo,
  });

  @override
  $AuthenticateUserDtoCopyWith<$Res>? get user;
  @override
  $AuthenticateSessionInfoDtoCopyWith<$Res>? get sessionInfo;
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
    Object? user = freezed,
    Object? sessionInfo = freezed,
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
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as AuthenticateUserDto?,
        sessionInfo: freezed == sessionInfo
            ? _value.sessionInfo
            : sessionInfo // ignore: cast_nullable_to_non_nullable
                  as AuthenticateSessionInfoDto?,
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
    @JsonKey(name: 'User') this.user,
    @JsonKey(name: 'SessionInfo') this.sessionInfo,
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
  final AuthenticateUserDto? user;
  @override
  @JsonKey(name: 'SessionInfo')
  final AuthenticateSessionInfoDto? sessionInfo;

  @override
  String toString() {
    return 'AuthenticateByNameResponseDto(accessToken: $accessToken, serverId: $serverId, user: $user, sessionInfo: $sessionInfo)';
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
            (identical(other.user, user) || other.user == user) &&
            (identical(other.sessionInfo, sessionInfo) ||
                other.sessionInfo == sessionInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, serverId, user, sessionInfo);

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
    @JsonKey(name: 'User') final AuthenticateUserDto? user,
    @JsonKey(name: 'SessionInfo') final AuthenticateSessionInfoDto? sessionInfo,
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
  AuthenticateUserDto? get user;
  @override
  @JsonKey(name: 'SessionInfo')
  AuthenticateSessionInfoDto? get sessionInfo;

  /// Create a copy of AuthenticateByNameResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateByNameResponseDtoImplCopyWith<
    _$AuthenticateByNameResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

AuthenticateUserDto _$AuthenticateUserDtoFromJson(Map<String, dynamic> json) {
  return _AuthenticateUserDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateUserDto {
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerId')
  String? get serverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Prefix')
  String? get prefix => throw _privateConstructorUsedError;
  @JsonKey(name: 'DateCreated')
  String? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'HasPassword')
  bool? get hasPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'HasConfiguredPassword')
  bool? get hasConfiguredPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastLoginDate')
  String? get lastLoginDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastActivityDate')
  String? get lastActivityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Configuration')
  Map<String, dynamic>? get configuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'Policy')
  Map<String, dynamic>? get policy => throw _privateConstructorUsedError;
  @JsonKey(name: 'HasConfiguredEasyPassword')
  bool? get hasConfiguredEasyPassword => throw _privateConstructorUsedError;

  /// Serializes this AuthenticateUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticateUserDtoCopyWith<AuthenticateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateUserDtoCopyWith<$Res> {
  factory $AuthenticateUserDtoCopyWith(
    AuthenticateUserDto value,
    $Res Function(AuthenticateUserDto) then,
  ) = _$AuthenticateUserDtoCopyWithImpl<$Res, AuthenticateUserDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'Prefix') String? prefix,
    @JsonKey(name: 'DateCreated') String? dateCreated,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'HasPassword') bool? hasPassword,
    @JsonKey(name: 'HasConfiguredPassword') bool? hasConfiguredPassword,
    @JsonKey(name: 'LastLoginDate') String? lastLoginDate,
    @JsonKey(name: 'LastActivityDate') String? lastActivityDate,
    @JsonKey(name: 'Configuration') Map<String, dynamic>? configuration,
    @JsonKey(name: 'Policy') Map<String, dynamic>? policy,
    @JsonKey(name: 'HasConfiguredEasyPassword') bool? hasConfiguredEasyPassword,
  });
}

/// @nodoc
class _$AuthenticateUserDtoCopyWithImpl<$Res, $Val extends AuthenticateUserDto>
    implements $AuthenticateUserDtoCopyWith<$Res> {
  _$AuthenticateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? serverId = freezed,
    Object? prefix = freezed,
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? hasPassword = freezed,
    Object? hasConfiguredPassword = freezed,
    Object? lastLoginDate = freezed,
    Object? lastActivityDate = freezed,
    Object? configuration = freezed,
    Object? policy = freezed,
    Object? hasConfiguredEasyPassword = freezed,
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
            prefix: freezed == prefix
                ? _value.prefix
                : prefix // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateCreated: freezed == dateCreated
                ? _value.dateCreated
                : dateCreated // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasPassword: freezed == hasPassword
                ? _value.hasPassword
                : hasPassword // ignore: cast_nullable_to_non_nullable
                      as bool?,
            hasConfiguredPassword: freezed == hasConfiguredPassword
                ? _value.hasConfiguredPassword
                : hasConfiguredPassword // ignore: cast_nullable_to_non_nullable
                      as bool?,
            lastLoginDate: freezed == lastLoginDate
                ? _value.lastLoginDate
                : lastLoginDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastActivityDate: freezed == lastActivityDate
                ? _value.lastActivityDate
                : lastActivityDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            configuration: freezed == configuration
                ? _value.configuration
                : configuration // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            policy: freezed == policy
                ? _value.policy
                : policy // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            hasConfiguredEasyPassword: freezed == hasConfiguredEasyPassword
                ? _value.hasConfiguredEasyPassword
                : hasConfiguredEasyPassword // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthenticateUserDtoImplCopyWith<$Res>
    implements $AuthenticateUserDtoCopyWith<$Res> {
  factory _$$AuthenticateUserDtoImplCopyWith(
    _$AuthenticateUserDtoImpl value,
    $Res Function(_$AuthenticateUserDtoImpl) then,
  ) = __$$AuthenticateUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'Prefix') String? prefix,
    @JsonKey(name: 'DateCreated') String? dateCreated,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'HasPassword') bool? hasPassword,
    @JsonKey(name: 'HasConfiguredPassword') bool? hasConfiguredPassword,
    @JsonKey(name: 'LastLoginDate') String? lastLoginDate,
    @JsonKey(name: 'LastActivityDate') String? lastActivityDate,
    @JsonKey(name: 'Configuration') Map<String, dynamic>? configuration,
    @JsonKey(name: 'Policy') Map<String, dynamic>? policy,
    @JsonKey(name: 'HasConfiguredEasyPassword') bool? hasConfiguredEasyPassword,
  });
}

/// @nodoc
class __$$AuthenticateUserDtoImplCopyWithImpl<$Res>
    extends _$AuthenticateUserDtoCopyWithImpl<$Res, _$AuthenticateUserDtoImpl>
    implements _$$AuthenticateUserDtoImplCopyWith<$Res> {
  __$$AuthenticateUserDtoImplCopyWithImpl(
    _$AuthenticateUserDtoImpl _value,
    $Res Function(_$AuthenticateUserDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? serverId = freezed,
    Object? prefix = freezed,
    Object? dateCreated = freezed,
    Object? id = freezed,
    Object? hasPassword = freezed,
    Object? hasConfiguredPassword = freezed,
    Object? lastLoginDate = freezed,
    Object? lastActivityDate = freezed,
    Object? configuration = freezed,
    Object? policy = freezed,
    Object? hasConfiguredEasyPassword = freezed,
  }) {
    return _then(
      _$AuthenticateUserDtoImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverId: freezed == serverId
            ? _value.serverId
            : serverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        prefix: freezed == prefix
            ? _value.prefix
            : prefix // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateCreated: freezed == dateCreated
            ? _value.dateCreated
            : dateCreated // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasPassword: freezed == hasPassword
            ? _value.hasPassword
            : hasPassword // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasConfiguredPassword: freezed == hasConfiguredPassword
            ? _value.hasConfiguredPassword
            : hasConfiguredPassword // ignore: cast_nullable_to_non_nullable
                  as bool?,
        lastLoginDate: freezed == lastLoginDate
            ? _value.lastLoginDate
            : lastLoginDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastActivityDate: freezed == lastActivityDate
            ? _value.lastActivityDate
            : lastActivityDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        configuration: freezed == configuration
            ? _value._configuration
            : configuration // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        policy: freezed == policy
            ? _value._policy
            : policy // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        hasConfiguredEasyPassword: freezed == hasConfiguredEasyPassword
            ? _value.hasConfiguredEasyPassword
            : hasConfiguredEasyPassword // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateUserDtoImpl implements _AuthenticateUserDto {
  const _$AuthenticateUserDtoImpl({
    @JsonKey(name: 'Name') this.name,
    @JsonKey(name: 'ServerId') this.serverId,
    @JsonKey(name: 'Prefix') this.prefix,
    @JsonKey(name: 'DateCreated') this.dateCreated,
    @JsonKey(name: 'Id') this.id,
    @JsonKey(name: 'HasPassword') this.hasPassword,
    @JsonKey(name: 'HasConfiguredPassword') this.hasConfiguredPassword,
    @JsonKey(name: 'LastLoginDate') this.lastLoginDate,
    @JsonKey(name: 'LastActivityDate') this.lastActivityDate,
    @JsonKey(name: 'Configuration') final Map<String, dynamic>? configuration,
    @JsonKey(name: 'Policy') final Map<String, dynamic>? policy,
    @JsonKey(name: 'HasConfiguredEasyPassword') this.hasConfiguredEasyPassword,
  }) : _configuration = configuration,
       _policy = policy;

  factory _$AuthenticateUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateUserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'ServerId')
  final String? serverId;
  @override
  @JsonKey(name: 'Prefix')
  final String? prefix;
  @override
  @JsonKey(name: 'DateCreated')
  final String? dateCreated;
  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'HasPassword')
  final bool? hasPassword;
  @override
  @JsonKey(name: 'HasConfiguredPassword')
  final bool? hasConfiguredPassword;
  @override
  @JsonKey(name: 'LastLoginDate')
  final String? lastLoginDate;
  @override
  @JsonKey(name: 'LastActivityDate')
  final String? lastActivityDate;
  final Map<String, dynamic>? _configuration;
  @override
  @JsonKey(name: 'Configuration')
  Map<String, dynamic>? get configuration {
    final value = _configuration;
    if (value == null) return null;
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _policy;
  @override
  @JsonKey(name: 'Policy')
  Map<String, dynamic>? get policy {
    final value = _policy;
    if (value == null) return null;
    if (_policy is EqualUnmodifiableMapView) return _policy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'HasConfiguredEasyPassword')
  final bool? hasConfiguredEasyPassword;

  @override
  String toString() {
    return 'AuthenticateUserDto(name: $name, serverId: $serverId, prefix: $prefix, dateCreated: $dateCreated, id: $id, hasPassword: $hasPassword, hasConfiguredPassword: $hasConfiguredPassword, lastLoginDate: $lastLoginDate, lastActivityDate: $lastActivityDate, configuration: $configuration, policy: $policy, hasConfiguredEasyPassword: $hasConfiguredEasyPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateUserDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hasPassword, hasPassword) ||
                other.hasPassword == hasPassword) &&
            (identical(other.hasConfiguredPassword, hasConfiguredPassword) ||
                other.hasConfiguredPassword == hasConfiguredPassword) &&
            (identical(other.lastLoginDate, lastLoginDate) ||
                other.lastLoginDate == lastLoginDate) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                other.lastActivityDate == lastActivityDate) &&
            const DeepCollectionEquality().equals(
              other._configuration,
              _configuration,
            ) &&
            const DeepCollectionEquality().equals(other._policy, _policy) &&
            (identical(
                  other.hasConfiguredEasyPassword,
                  hasConfiguredEasyPassword,
                ) ||
                other.hasConfiguredEasyPassword == hasConfiguredEasyPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    serverId,
    prefix,
    dateCreated,
    id,
    hasPassword,
    hasConfiguredPassword,
    lastLoginDate,
    lastActivityDate,
    const DeepCollectionEquality().hash(_configuration),
    const DeepCollectionEquality().hash(_policy),
    hasConfiguredEasyPassword,
  );

  /// Create a copy of AuthenticateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateUserDtoImplCopyWith<_$AuthenticateUserDtoImpl> get copyWith =>
      __$$AuthenticateUserDtoImplCopyWithImpl<_$AuthenticateUserDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateUserDtoImplToJson(this);
  }
}

abstract class _AuthenticateUserDto implements AuthenticateUserDto {
  const factory _AuthenticateUserDto({
    @JsonKey(name: 'Name') final String? name,
    @JsonKey(name: 'ServerId') final String? serverId,
    @JsonKey(name: 'Prefix') final String? prefix,
    @JsonKey(name: 'DateCreated') final String? dateCreated,
    @JsonKey(name: 'Id') final String? id,
    @JsonKey(name: 'HasPassword') final bool? hasPassword,
    @JsonKey(name: 'HasConfiguredPassword') final bool? hasConfiguredPassword,
    @JsonKey(name: 'LastLoginDate') final String? lastLoginDate,
    @JsonKey(name: 'LastActivityDate') final String? lastActivityDate,
    @JsonKey(name: 'Configuration') final Map<String, dynamic>? configuration,
    @JsonKey(name: 'Policy') final Map<String, dynamic>? policy,
    @JsonKey(name: 'HasConfiguredEasyPassword')
    final bool? hasConfiguredEasyPassword,
  }) = _$AuthenticateUserDtoImpl;

  factory _AuthenticateUserDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticateUserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'ServerId')
  String? get serverId;
  @override
  @JsonKey(name: 'Prefix')
  String? get prefix;
  @override
  @JsonKey(name: 'DateCreated')
  String? get dateCreated;
  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'HasPassword')
  bool? get hasPassword;
  @override
  @JsonKey(name: 'HasConfiguredPassword')
  bool? get hasConfiguredPassword;
  @override
  @JsonKey(name: 'LastLoginDate')
  String? get lastLoginDate;
  @override
  @JsonKey(name: 'LastActivityDate')
  String? get lastActivityDate;
  @override
  @JsonKey(name: 'Configuration')
  Map<String, dynamic>? get configuration;
  @override
  @JsonKey(name: 'Policy')
  Map<String, dynamic>? get policy;
  @override
  @JsonKey(name: 'HasConfiguredEasyPassword')
  bool? get hasConfiguredEasyPassword;

  /// Create a copy of AuthenticateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateUserDtoImplCopyWith<_$AuthenticateUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthenticateSessionInfoDto _$AuthenticateSessionInfoDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AuthenticateSessionInfoDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateSessionInfoDto {
  @JsonKey(name: 'PlayState')
  Map<String, dynamic>? get playState => throw _privateConstructorUsedError;
  @JsonKey(name: 'AdditionalUsers')
  List<dynamic>? get additionalUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'RemoteEndPoint')
  String? get remoteEndPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'Protocol')
  String? get protocol => throw _privateConstructorUsedError;
  @JsonKey(name: 'PlayableMediaTypes')
  List<dynamic>? get playableMediaTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'PlaylistIndex')
  int? get playListIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'PlaylistLength')
  int? get playListLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerId')
  String? get serverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserName')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Client')
  String? get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'LastActivityDate')
  String? get lastActivityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeviceName')
  String? get deviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'InternalDeviceId')
  int? get internalDeviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeviceId')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApplicationVersion')
  String? get applicationVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'SupportedCommands')
  List<dynamic>? get supportedCommands => throw _privateConstructorUsedError;
  @JsonKey(name: 'SupportsRemoteControl')
  bool? get supportsRemoteControl => throw _privateConstructorUsedError;

  /// Serializes this AuthenticateSessionInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticateSessionInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticateSessionInfoDtoCopyWith<AuthenticateSessionInfoDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateSessionInfoDtoCopyWith<$Res> {
  factory $AuthenticateSessionInfoDtoCopyWith(
    AuthenticateSessionInfoDto value,
    $Res Function(AuthenticateSessionInfoDto) then,
  ) =
      _$AuthenticateSessionInfoDtoCopyWithImpl<
        $Res,
        AuthenticateSessionInfoDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'PlayState') Map<String, dynamic>? playState,
    @JsonKey(name: 'AdditionalUsers') List<dynamic>? additionalUsers,
    @JsonKey(name: 'RemoteEndPoint') String? remoteEndPoint,
    @JsonKey(name: 'Protocol') String? protocol,
    @JsonKey(name: 'PlayableMediaTypes') List<dynamic>? playableMediaTypes,
    @JsonKey(name: 'PlaylistIndex') int? playListIndex,
    @JsonKey(name: 'PlaylistLength') int? playListLength,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'UserId') String? userId,
    @JsonKey(name: 'UserName') String? userName,
    @JsonKey(name: 'Client') String? client,
    @JsonKey(name: 'LastActivityDate') String? lastActivityDate,
    @JsonKey(name: 'DeviceName') String? deviceName,
    @JsonKey(name: 'InternalDeviceId') int? internalDeviceId,
    @JsonKey(name: 'DeviceId') String? deviceId,
    @JsonKey(name: 'ApplicationVersion') String? applicationVersion,
    @JsonKey(name: 'SupportedCommands') List<dynamic>? supportedCommands,
    @JsonKey(name: 'SupportsRemoteControl') bool? supportsRemoteControl,
  });
}

/// @nodoc
class _$AuthenticateSessionInfoDtoCopyWithImpl<
  $Res,
  $Val extends AuthenticateSessionInfoDto
>
    implements $AuthenticateSessionInfoDtoCopyWith<$Res> {
  _$AuthenticateSessionInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticateSessionInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playState = freezed,
    Object? additionalUsers = freezed,
    Object? remoteEndPoint = freezed,
    Object? protocol = freezed,
    Object? playableMediaTypes = freezed,
    Object? playListIndex = freezed,
    Object? playListLength = freezed,
    Object? id = freezed,
    Object? serverId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? client = freezed,
    Object? lastActivityDate = freezed,
    Object? deviceName = freezed,
    Object? internalDeviceId = freezed,
    Object? deviceId = freezed,
    Object? applicationVersion = freezed,
    Object? supportedCommands = freezed,
    Object? supportsRemoteControl = freezed,
  }) {
    return _then(
      _value.copyWith(
            playState: freezed == playState
                ? _value.playState
                : playState // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            additionalUsers: freezed == additionalUsers
                ? _value.additionalUsers
                : additionalUsers // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            remoteEndPoint: freezed == remoteEndPoint
                ? _value.remoteEndPoint
                : remoteEndPoint // ignore: cast_nullable_to_non_nullable
                      as String?,
            protocol: freezed == protocol
                ? _value.protocol
                : protocol // ignore: cast_nullable_to_non_nullable
                      as String?,
            playableMediaTypes: freezed == playableMediaTypes
                ? _value.playableMediaTypes
                : playableMediaTypes // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            playListIndex: freezed == playListIndex
                ? _value.playListIndex
                : playListIndex // ignore: cast_nullable_to_non_nullable
                      as int?,
            playListLength: freezed == playListLength
                ? _value.playListLength
                : playListLength // ignore: cast_nullable_to_non_nullable
                      as int?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            serverId: freezed == serverId
                ? _value.serverId
                : serverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userName: freezed == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String?,
            client: freezed == client
                ? _value.client
                : client // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastActivityDate: freezed == lastActivityDate
                ? _value.lastActivityDate
                : lastActivityDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceName: freezed == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String?,
            internalDeviceId: freezed == internalDeviceId
                ? _value.internalDeviceId
                : internalDeviceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            deviceId: freezed == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            applicationVersion: freezed == applicationVersion
                ? _value.applicationVersion
                : applicationVersion // ignore: cast_nullable_to_non_nullable
                      as String?,
            supportedCommands: freezed == supportedCommands
                ? _value.supportedCommands
                : supportedCommands // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            supportsRemoteControl: freezed == supportsRemoteControl
                ? _value.supportsRemoteControl
                : supportsRemoteControl // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthenticateSessionInfoDtoImplCopyWith<$Res>
    implements $AuthenticateSessionInfoDtoCopyWith<$Res> {
  factory _$$AuthenticateSessionInfoDtoImplCopyWith(
    _$AuthenticateSessionInfoDtoImpl value,
    $Res Function(_$AuthenticateSessionInfoDtoImpl) then,
  ) = __$$AuthenticateSessionInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'PlayState') Map<String, dynamic>? playState,
    @JsonKey(name: 'AdditionalUsers') List<dynamic>? additionalUsers,
    @JsonKey(name: 'RemoteEndPoint') String? remoteEndPoint,
    @JsonKey(name: 'Protocol') String? protocol,
    @JsonKey(name: 'PlayableMediaTypes') List<dynamic>? playableMediaTypes,
    @JsonKey(name: 'PlaylistIndex') int? playListIndex,
    @JsonKey(name: 'PlaylistLength') int? playListLength,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'UserId') String? userId,
    @JsonKey(name: 'UserName') String? userName,
    @JsonKey(name: 'Client') String? client,
    @JsonKey(name: 'LastActivityDate') String? lastActivityDate,
    @JsonKey(name: 'DeviceName') String? deviceName,
    @JsonKey(name: 'InternalDeviceId') int? internalDeviceId,
    @JsonKey(name: 'DeviceId') String? deviceId,
    @JsonKey(name: 'ApplicationVersion') String? applicationVersion,
    @JsonKey(name: 'SupportedCommands') List<dynamic>? supportedCommands,
    @JsonKey(name: 'SupportsRemoteControl') bool? supportsRemoteControl,
  });
}

/// @nodoc
class __$$AuthenticateSessionInfoDtoImplCopyWithImpl<$Res>
    extends
        _$AuthenticateSessionInfoDtoCopyWithImpl<
          $Res,
          _$AuthenticateSessionInfoDtoImpl
        >
    implements _$$AuthenticateSessionInfoDtoImplCopyWith<$Res> {
  __$$AuthenticateSessionInfoDtoImplCopyWithImpl(
    _$AuthenticateSessionInfoDtoImpl _value,
    $Res Function(_$AuthenticateSessionInfoDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthenticateSessionInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playState = freezed,
    Object? additionalUsers = freezed,
    Object? remoteEndPoint = freezed,
    Object? protocol = freezed,
    Object? playableMediaTypes = freezed,
    Object? playListIndex = freezed,
    Object? playListLength = freezed,
    Object? id = freezed,
    Object? serverId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? client = freezed,
    Object? lastActivityDate = freezed,
    Object? deviceName = freezed,
    Object? internalDeviceId = freezed,
    Object? deviceId = freezed,
    Object? applicationVersion = freezed,
    Object? supportedCommands = freezed,
    Object? supportsRemoteControl = freezed,
  }) {
    return _then(
      _$AuthenticateSessionInfoDtoImpl(
        playState: freezed == playState
            ? _value._playState
            : playState // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        additionalUsers: freezed == additionalUsers
            ? _value._additionalUsers
            : additionalUsers // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        remoteEndPoint: freezed == remoteEndPoint
            ? _value.remoteEndPoint
            : remoteEndPoint // ignore: cast_nullable_to_non_nullable
                  as String?,
        protocol: freezed == protocol
            ? _value.protocol
            : protocol // ignore: cast_nullable_to_non_nullable
                  as String?,
        playableMediaTypes: freezed == playableMediaTypes
            ? _value._playableMediaTypes
            : playableMediaTypes // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        playListIndex: freezed == playListIndex
            ? _value.playListIndex
            : playListIndex // ignore: cast_nullable_to_non_nullable
                  as int?,
        playListLength: freezed == playListLength
            ? _value.playListLength
            : playListLength // ignore: cast_nullable_to_non_nullable
                  as int?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverId: freezed == serverId
            ? _value.serverId
            : serverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userName: freezed == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String?,
        client: freezed == client
            ? _value.client
            : client // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastActivityDate: freezed == lastActivityDate
            ? _value.lastActivityDate
            : lastActivityDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceName: freezed == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String?,
        internalDeviceId: freezed == internalDeviceId
            ? _value.internalDeviceId
            : internalDeviceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        deviceId: freezed == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        applicationVersion: freezed == applicationVersion
            ? _value.applicationVersion
            : applicationVersion // ignore: cast_nullable_to_non_nullable
                  as String?,
        supportedCommands: freezed == supportedCommands
            ? _value._supportedCommands
            : supportedCommands // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        supportsRemoteControl: freezed == supportsRemoteControl
            ? _value.supportsRemoteControl
            : supportsRemoteControl // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateSessionInfoDtoImpl implements _AuthenticateSessionInfoDto {
  const _$AuthenticateSessionInfoDtoImpl({
    @JsonKey(name: 'PlayState') final Map<String, dynamic>? playState,
    @JsonKey(name: 'AdditionalUsers') final List<dynamic>? additionalUsers,
    @JsonKey(name: 'RemoteEndPoint') this.remoteEndPoint,
    @JsonKey(name: 'Protocol') this.protocol,
    @JsonKey(name: 'PlayableMediaTypes')
    final List<dynamic>? playableMediaTypes,
    @JsonKey(name: 'PlaylistIndex') this.playListIndex,
    @JsonKey(name: 'PlaylistLength') this.playListLength,
    @JsonKey(name: 'Id') this.id,
    @JsonKey(name: 'ServerId') this.serverId,
    @JsonKey(name: 'UserId') this.userId,
    @JsonKey(name: 'UserName') this.userName,
    @JsonKey(name: 'Client') this.client,
    @JsonKey(name: 'LastActivityDate') this.lastActivityDate,
    @JsonKey(name: 'DeviceName') this.deviceName,
    @JsonKey(name: 'InternalDeviceId') this.internalDeviceId,
    @JsonKey(name: 'DeviceId') this.deviceId,
    @JsonKey(name: 'ApplicationVersion') this.applicationVersion,
    @JsonKey(name: 'SupportedCommands') final List<dynamic>? supportedCommands,
    @JsonKey(name: 'SupportsRemoteControl') this.supportsRemoteControl,
  }) : _playState = playState,
       _additionalUsers = additionalUsers,
       _playableMediaTypes = playableMediaTypes,
       _supportedCommands = supportedCommands;

  factory _$AuthenticateSessionInfoDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AuthenticateSessionInfoDtoImplFromJson(json);

  final Map<String, dynamic>? _playState;
  @override
  @JsonKey(name: 'PlayState')
  Map<String, dynamic>? get playState {
    final value = _playState;
    if (value == null) return null;
    if (_playState is EqualUnmodifiableMapView) return _playState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<dynamic>? _additionalUsers;
  @override
  @JsonKey(name: 'AdditionalUsers')
  List<dynamic>? get additionalUsers {
    final value = _additionalUsers;
    if (value == null) return null;
    if (_additionalUsers is EqualUnmodifiableListView) return _additionalUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'RemoteEndPoint')
  final String? remoteEndPoint;
  @override
  @JsonKey(name: 'Protocol')
  final String? protocol;
  final List<dynamic>? _playableMediaTypes;
  @override
  @JsonKey(name: 'PlayableMediaTypes')
  List<dynamic>? get playableMediaTypes {
    final value = _playableMediaTypes;
    if (value == null) return null;
    if (_playableMediaTypes is EqualUnmodifiableListView)
      return _playableMediaTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'PlaylistIndex')
  final int? playListIndex;
  @override
  @JsonKey(name: 'PlaylistLength')
  final int? playListLength;
  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'ServerId')
  final String? serverId;
  @override
  @JsonKey(name: 'UserId')
  final String? userId;
  @override
  @JsonKey(name: 'UserName')
  final String? userName;
  @override
  @JsonKey(name: 'Client')
  final String? client;
  @override
  @JsonKey(name: 'LastActivityDate')
  final String? lastActivityDate;
  @override
  @JsonKey(name: 'DeviceName')
  final String? deviceName;
  @override
  @JsonKey(name: 'InternalDeviceId')
  final int? internalDeviceId;
  @override
  @JsonKey(name: 'DeviceId')
  final String? deviceId;
  @override
  @JsonKey(name: 'ApplicationVersion')
  final String? applicationVersion;
  final List<dynamic>? _supportedCommands;
  @override
  @JsonKey(name: 'SupportedCommands')
  List<dynamic>? get supportedCommands {
    final value = _supportedCommands;
    if (value == null) return null;
    if (_supportedCommands is EqualUnmodifiableListView)
      return _supportedCommands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'SupportsRemoteControl')
  final bool? supportsRemoteControl;

  @override
  String toString() {
    return 'AuthenticateSessionInfoDto(playState: $playState, additionalUsers: $additionalUsers, remoteEndPoint: $remoteEndPoint, protocol: $protocol, playableMediaTypes: $playableMediaTypes, playListIndex: $playListIndex, playListLength: $playListLength, id: $id, serverId: $serverId, userId: $userId, userName: $userName, client: $client, lastActivityDate: $lastActivityDate, deviceName: $deviceName, internalDeviceId: $internalDeviceId, deviceId: $deviceId, applicationVersion: $applicationVersion, supportedCommands: $supportedCommands, supportsRemoteControl: $supportsRemoteControl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateSessionInfoDtoImpl &&
            const DeepCollectionEquality().equals(
              other._playState,
              _playState,
            ) &&
            const DeepCollectionEquality().equals(
              other._additionalUsers,
              _additionalUsers,
            ) &&
            (identical(other.remoteEndPoint, remoteEndPoint) ||
                other.remoteEndPoint == remoteEndPoint) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            const DeepCollectionEquality().equals(
              other._playableMediaTypes,
              _playableMediaTypes,
            ) &&
            (identical(other.playListIndex, playListIndex) ||
                other.playListIndex == playListIndex) &&
            (identical(other.playListLength, playListLength) ||
                other.playListLength == playListLength) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                other.lastActivityDate == lastActivityDate) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.internalDeviceId, internalDeviceId) ||
                other.internalDeviceId == internalDeviceId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.applicationVersion, applicationVersion) ||
                other.applicationVersion == applicationVersion) &&
            const DeepCollectionEquality().equals(
              other._supportedCommands,
              _supportedCommands,
            ) &&
            (identical(other.supportsRemoteControl, supportsRemoteControl) ||
                other.supportsRemoteControl == supportsRemoteControl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    const DeepCollectionEquality().hash(_playState),
    const DeepCollectionEquality().hash(_additionalUsers),
    remoteEndPoint,
    protocol,
    const DeepCollectionEquality().hash(_playableMediaTypes),
    playListIndex,
    playListLength,
    id,
    serverId,
    userId,
    userName,
    client,
    lastActivityDate,
    deviceName,
    internalDeviceId,
    deviceId,
    applicationVersion,
    const DeepCollectionEquality().hash(_supportedCommands),
    supportsRemoteControl,
  ]);

  /// Create a copy of AuthenticateSessionInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateSessionInfoDtoImplCopyWith<_$AuthenticateSessionInfoDtoImpl>
  get copyWith =>
      __$$AuthenticateSessionInfoDtoImplCopyWithImpl<
        _$AuthenticateSessionInfoDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateSessionInfoDtoImplToJson(this);
  }
}

abstract class _AuthenticateSessionInfoDto
    implements AuthenticateSessionInfoDto {
  const factory _AuthenticateSessionInfoDto({
    @JsonKey(name: 'PlayState') final Map<String, dynamic>? playState,
    @JsonKey(name: 'AdditionalUsers') final List<dynamic>? additionalUsers,
    @JsonKey(name: 'RemoteEndPoint') final String? remoteEndPoint,
    @JsonKey(name: 'Protocol') final String? protocol,
    @JsonKey(name: 'PlayableMediaTypes')
    final List<dynamic>? playableMediaTypes,
    @JsonKey(name: 'PlaylistIndex') final int? playListIndex,
    @JsonKey(name: 'PlaylistLength') final int? playListLength,
    @JsonKey(name: 'Id') final String? id,
    @JsonKey(name: 'ServerId') final String? serverId,
    @JsonKey(name: 'UserId') final String? userId,
    @JsonKey(name: 'UserName') final String? userName,
    @JsonKey(name: 'Client') final String? client,
    @JsonKey(name: 'LastActivityDate') final String? lastActivityDate,
    @JsonKey(name: 'DeviceName') final String? deviceName,
    @JsonKey(name: 'InternalDeviceId') final int? internalDeviceId,
    @JsonKey(name: 'DeviceId') final String? deviceId,
    @JsonKey(name: 'ApplicationVersion') final String? applicationVersion,
    @JsonKey(name: 'SupportedCommands') final List<dynamic>? supportedCommands,
    @JsonKey(name: 'SupportsRemoteControl') final bool? supportsRemoteControl,
  }) = _$AuthenticateSessionInfoDtoImpl;

  factory _AuthenticateSessionInfoDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticateSessionInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'PlayState')
  Map<String, dynamic>? get playState;
  @override
  @JsonKey(name: 'AdditionalUsers')
  List<dynamic>? get additionalUsers;
  @override
  @JsonKey(name: 'RemoteEndPoint')
  String? get remoteEndPoint;
  @override
  @JsonKey(name: 'Protocol')
  String? get protocol;
  @override
  @JsonKey(name: 'PlayableMediaTypes')
  List<dynamic>? get playableMediaTypes;
  @override
  @JsonKey(name: 'PlaylistIndex')
  int? get playListIndex;
  @override
  @JsonKey(name: 'PlaylistLength')
  int? get playListLength;
  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'ServerId')
  String? get serverId;
  @override
  @JsonKey(name: 'UserId')
  String? get userId;
  @override
  @JsonKey(name: 'UserName')
  String? get userName;
  @override
  @JsonKey(name: 'Client')
  String? get client;
  @override
  @JsonKey(name: 'LastActivityDate')
  String? get lastActivityDate;
  @override
  @JsonKey(name: 'DeviceName')
  String? get deviceName;
  @override
  @JsonKey(name: 'InternalDeviceId')
  int? get internalDeviceId;
  @override
  @JsonKey(name: 'DeviceId')
  String? get deviceId;
  @override
  @JsonKey(name: 'ApplicationVersion')
  String? get applicationVersion;
  @override
  @JsonKey(name: 'SupportedCommands')
  List<dynamic>? get supportedCommands;
  @override
  @JsonKey(name: 'SupportsRemoteControl')
  bool? get supportsRemoteControl;

  /// Create a copy of AuthenticateSessionInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateSessionInfoDtoImplCopyWith<_$AuthenticateSessionInfoDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
