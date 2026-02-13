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
      version: json['User'] as String?,
      localAddress: json['SessionInfo'] as String?,
    );

Map<String, dynamic> _$$AuthenticateByNameResponseDtoImplToJson(
  _$AuthenticateByNameResponseDtoImpl instance,
) => <String, dynamic>{
  'AccessToken': instance.accessToken,
  'ServerId': instance.serverId,
  'User': instance.version,
  'SessionInfo': instance.localAddress,
};
