import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:remote_config_demo/model/app_update_info.dart';
import 'package:remote_config_demo/utils/app_logger.dart';

abstract class IAppUpdateChecker {
  String get getCurrentlyInstalledAppVersion;
}

abstract class IRemoteConfigAppUpdateChecker implements IAppUpdateChecker {
  Future<void> init();
  AppUpdateInfo appUpdateInfo();
  String get configKey;
  Map<String, Object> get defaultValues;
}

abstract class IAndroidAppUpdateChecker
    implements IRemoteConfigAppUpdateChecker {}

abstract class IIOSAppUpdateChecker implements IRemoteConfigAppUpdateChecker {}

class RemoteConfigAndriodAppUpdateChecker implements IAndroidAppUpdateChecker {
  factory RemoteConfigAndriodAppUpdateChecker({
    required PackageInfo appInfo,
    required FirebaseRemoteConfig remoteConfig,
  }) {
    _instance ??= RemoteConfigAndriodAppUpdateChecker._(
      remoteConfig: remoteConfig,
      appInfo: appInfo,
    );
    return _instance!;
  }

  const RemoteConfigAndriodAppUpdateChecker._({
    required FirebaseRemoteConfig remoteConfig,
    required PackageInfo appInfo,
  })  : _remoteConfig = remoteConfig,
        _appInfo = appInfo;

  final FirebaseRemoteConfig _remoteConfig;
  final PackageInfo _appInfo;

  static RemoteConfigAndriodAppUpdateChecker? _instance;

  @override
  Future<void> init() async {
    try {
      await _remoteConfig.ensureInitialized();
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(minutes: 5),
        ),
      );
      await _remoteConfig.setDefaults(defaultValues);
      await _remoteConfig.fetchAndActivate();
    } on FirebaseException catch (e) {
      'Firebase Exception: ${e.message} \n StackTrace: ${e.stackTrace}'.log();
    }
  }

  @override
  AppUpdateInfo appUpdateInfo() {
    final jsonString = _remoteConfig.getString(configKey);
    'Json String: $jsonString'.log();
    final json = jsonDecode(jsonString);
    'Json: $json'.log();
    final appUpdateInfo = AppUpdateInfo.fromJson(json);
    'App Update Info: $appUpdateInfo'.log();
    return appUpdateInfo;
  }

  @override
  String get configKey => 'appUpdateInfo';

  @override
  Map<String, Object> get defaultValues {
    return {
      "appVersion": getCurrentlyInstalledAppVersion,
      "forceUpgrade": false,
      "recommendedUpgrade": false,
    };
  }

  @override
  String get getCurrentlyInstalledAppVersion {
    'Currently Installed App Version: ${_appInfo.version}'.log();
    return _appInfo.version;
  }
}

// class IOSAppUpdateCheckerWithRemoteConfig implements IIOSAppUpdateChecker {}
