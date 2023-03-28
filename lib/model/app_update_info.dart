import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_update_info.freezed.dart';
part 'app_update_info.g.dart';

@freezed
class AppUpdateInfo with _$AppUpdateInfo {
  const factory AppUpdateInfo({
    required String appVersion,
    required bool forceUpgrade,
    required bool recommendedUpgrade,
  }) = _AppUpdateInfo;

  factory AppUpdateInfo.fromJson(Map<String, Object?> json) =>
      _$AppUpdateInfoFromJson(json);
}
