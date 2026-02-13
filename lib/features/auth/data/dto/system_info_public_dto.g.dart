// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_public_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemInfoPublicResponseDtoImpl _$$SystemInfoPublicResponseDtoImplFromJson(
  Map<String, dynamic> json,
) => _$SystemInfoPublicResponseDtoImpl(
  id: json['Id'] as String?,
  localAddresses: (json['LocalAddresses'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  remoteAddresses: (json['RemoteAddresses'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  localAddress: json['ServerName'] as String?,
  version: json['Version'] as String?,
);

Map<String, dynamic> _$$SystemInfoPublicResponseDtoImplToJson(
  _$SystemInfoPublicResponseDtoImpl instance,
) => <String, dynamic>{
  'Id': instance.id,
  'LocalAddresses': instance.localAddresses,
  'RemoteAddresses': instance.remoteAddresses,
  'ServerName': instance.localAddress,
  'Version': instance.version,
};
