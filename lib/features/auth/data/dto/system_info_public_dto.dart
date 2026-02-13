import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_info_public_dto.freezed.dart';
part 'system_info_public_dto.g.dart';

/// DTO for `GET /emby/system/info/public`.
@freezed
class SystemInfoPublicResponseDto with _$SystemInfoPublicResponseDto {
  const factory SystemInfoPublicResponseDto({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'LocalAddresses') List<String>? localAddresses,
    @JsonKey(name: 'RemoteAddresses') List<String>? remoteAddresses,
    @JsonKey(name: 'ServerName') String? localAddress,
    @JsonKey(name: 'Version') String? version,
  }) = _SystemInfoPublicResponseDto;

  factory SystemInfoPublicResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SystemInfoPublicResponseDtoFromJson(json);
}
