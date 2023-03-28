part of 'app_update_checker_bloc.dart';

@freezed
class AppUpdateCheckerState with _$AppUpdateCheckerState {
  const factory AppUpdateCheckerState.initial() = _Initial;
  const factory AppUpdateCheckerState.loading() = _Loading;
  const factory AppUpdateCheckerState.loaded(AppUpdateInfo appUpdateInfo) =
      _Loaded;
}
