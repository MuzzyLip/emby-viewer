import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_by_name_dto.freezed.dart';
part 'authenticate_by_name_dto.g.dart';

/// DTO for `GET /emby/system/info/public`.
@freezed
class AuthenticateByNameResponseDto with _$AuthenticateByNameResponseDto {
  const factory AuthenticateByNameResponseDto({
    @JsonKey(name: 'AccessToken') String? accessToken,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'User') AuthenticateUserDto? user,
    @JsonKey(name: 'SessionInfo') AuthenticateSessionInfoDto? sessionInfo,
  }) = _AuthenticateByNameResponseDto;

  factory AuthenticateByNameResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateByNameResponseDtoFromJson(json);
}

@freezed
class AuthenticateUserDto with _$AuthenticateUserDto {
  const factory AuthenticateUserDto({
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
  }) = _AuthenticateUserDto;

  factory AuthenticateUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateUserDtoFromJson(json);
}

@freezed
class AuthenticateSessionInfoDto with _$AuthenticateSessionInfoDto {
  const factory AuthenticateSessionInfoDto({
    @JsonKey(name: 'PlayState') Map<String, dynamic>? playState,
    @JsonKey(name: 'AdditionalUsers') List? additionalUsers,
    @JsonKey(name: 'RemoteEndPoint') String? remoteEndPoint,
    @JsonKey(name: 'Protocol') String? protocol,
    @JsonKey(name: 'PlayableMediaTypes') List? playableMediaTypes,
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
    @JsonKey(name: 'SupportedCommands') List? supportedCommands,
    @JsonKey(name: 'SupportsRemoteControl') bool? supportsRemoteControl,
  }) = _AuthenticateSessionInfoDto;

  factory AuthenticateSessionInfoDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateSessionInfoDtoFromJson(json);
}
