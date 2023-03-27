part of 'startup_bloc.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState.initial() = _Initial;
  const factory StartupState.loading() = _Loading;
  const factory StartupState.loaded() = _Loaded;
}
