import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_by_name_dto.freezed.dart';
part 'authenticate_by_name_dto.g.dart';

/// DTO for `GET /emby/system/info/public`.
@freezed
class AuthenticateByNameResponseDto with _$AuthenticateByNameResponseDto {
  const factory AuthenticateByNameResponseDto({
    @JsonKey(name: 'AccessToken') String? accessToken,
    @JsonKey(name: 'ServerId') String? serverId,
    @JsonKey(name: 'User') String? version,
    @JsonKey(name: 'SessionInfo') String? localAddress,
  }) = _AuthenticateByNameResponseDto;

  factory AuthenticateByNameResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateByNameResponseDtoFromJson(json);
}
