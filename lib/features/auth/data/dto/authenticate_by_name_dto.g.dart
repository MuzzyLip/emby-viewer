// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_by_name_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticateByNameResponseDtoImpl
_$$AuthenticateByNameResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthenticateByNameResponseDtoImpl(
      accessToken: json['AccessToken'] as String?,
      serverId: json['ServerId'] as String?,
      user: json['User'] == null
          ? null
          : AuthenticateUserDto.fromJson(json['User'] as Map<String, dynamic>),
      sessionInfo: json['SessionInfo'] == null
          ? null
          : AuthenticateSessionInfoDto.fromJson(
              json['SessionInfo'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$AuthenticateByNameResponseDtoImplToJson(
  _$AuthenticateByNameResponseDtoImpl instance,
) => <String, dynamic>{
  'AccessToken': instance.accessToken,
  'ServerId': instance.serverId,
  'User': instance.user,
  'SessionInfo': instance.sessionInfo,
};

_$AuthenticateUserDtoImpl _$$AuthenticateUserDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AuthenticateUserDtoImpl(
  name: json['Name'] as String?,
  serverId: json['ServerId'] as String?,
  prefix: json['Prefix'] as String?,
  dateCreated: json['DateCreated'] as String?,
  id: json['Id'] as String?,
  hasPassword: json['HasPassword'] as bool?,
  hasConfiguredPassword: json['HasConfiguredPassword'] as bool?,
  lastLoginDate: json['LastLoginDate'] as String?,
  lastActivityDate: json['LastActivityDate'] as String?,
  configuration: json['Configuration'] as Map<String, dynamic>?,
  policy: json['Policy'] as Map<String, dynamic>?,
  hasConfiguredEasyPassword: json['HasConfiguredEasyPassword'] as bool?,
);

Map<String, dynamic> _$$AuthenticateUserDtoImplToJson(
  _$AuthenticateUserDtoImpl instance,
) => <String, dynamic>{
  'Name': instance.name,
  'ServerId': instance.serverId,
  'Prefix': instance.prefix,
  'DateCreated': instance.dateCreated,
  'Id': instance.id,
  'HasPassword': instance.hasPassword,
  'HasConfiguredPassword': instance.hasConfiguredPassword,
  'LastLoginDate': instance.lastLoginDate,
  'LastActivityDate': instance.lastActivityDate,
  'Configuration': instance.configuration,
  'Policy': instance.policy,
  'HasConfiguredEasyPassword': instance.hasConfiguredEasyPassword,
};

_$AuthenticateSessionInfoDtoImpl _$$AuthenticateSessionInfoDtoImplFromJson(
  Map<String, dynamic> json,
) => _$AuthenticateSessionInfoDtoImpl(
  playState: json['PlayState'] as Map<String, dynamic>?,
  additionalUsers: json['AdditionalUsers'] as List<dynamic>?,
  remoteEndPoint: json['RemoteEndPoint'] as String?,
  protocol: json['Protocol'] as String?,
  playableMediaTypes: json['PlayableMediaTypes'] as List<dynamic>?,
  playListIndex: (json['PlaylistIndex'] as num?)?.toInt(),
  playListLength: (json['PlaylistLength'] as num?)?.toInt(),
  id: json['Id'] as String?,
  serverId: json['ServerId'] as String?,
  userId: json['UserId'] as String?,
  userName: json['UserName'] as String?,
  client: json['Client'] as String?,
  lastActivityDate: json['LastActivityDate'] as String?,
  deviceName: json['DeviceName'] as String?,
  internalDeviceId: (json['InternalDeviceId'] as num?)?.toInt(),
  deviceId: json['DeviceId'] as String?,
  applicationVersion: json['ApplicationVersion'] as String?,
  supportedCommands: json['SupportedCommands'] as List<dynamic>?,
  supportsRemoteControl: json['SupportsRemoteControl'] as bool?,
);

Map<String, dynamic> _$$AuthenticateSessionInfoDtoImplToJson(
  _$AuthenticateSessionInfoDtoImpl instance,
) => <String, dynamic>{
  'PlayState': instance.playState,
  'AdditionalUsers': instance.additionalUsers,
  'RemoteEndPoint': instance.remoteEndPoint,
  'Protocol': instance.protocol,
  'PlayableMediaTypes': instance.playableMediaTypes,
  'PlaylistIndex': instance.playListIndex,
  'PlaylistLength': instance.playListLength,
  'Id': instance.id,
  'ServerId': instance.serverId,
  'UserId': instance.userId,
  'UserName': instance.userName,
  'Client': instance.client,
  'LastActivityDate': instance.lastActivityDate,
  'DeviceName': instance.deviceName,
  'InternalDeviceId': instance.internalDeviceId,
  'DeviceId': instance.deviceId,
  'ApplicationVersion': instance.applicationVersion,
  'SupportedCommands': instance.supportedCommands,
  'SupportsRemoteControl': instance.supportsRemoteControl,
};
