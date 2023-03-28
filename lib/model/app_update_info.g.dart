// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUpdateInfo _$$_AppUpdateInfoFromJson(Map<String, dynamic> json) =>
    _$_AppUpdateInfo(
      appVersion: json['appVersion'] as String,
      forceUpgrade: json['forceUpgrade'] as bool,
      recommendedUpgrade: json['recommendedUpgrade'] as bool,
    );

Map<String, dynamic> _$$_AppUpdateInfoToJson(_$_AppUpdateInfo instance) =>
    <String, dynamic>{
      'appVersion': instance.appVersion,
      'forceUpgrade': instance.forceUpgrade,
      'recommendedUpgrade': instance.recommendedUpgrade,
    };
