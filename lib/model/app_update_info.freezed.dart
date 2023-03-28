// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUpdateInfo _$AppUpdateInfoFromJson(Map<String, dynamic> json) {
  return _AppUpdateInfo.fromJson(json);
}

/// @nodoc
mixin _$AppUpdateInfo {
  String get appVersion => throw _privateConstructorUsedError;
  bool get forceUpgrade => throw _privateConstructorUsedError;
  bool get recommendedUpgrade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUpdateInfoCopyWith<AppUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateInfoCopyWith<$Res> {
  factory $AppUpdateInfoCopyWith(
          AppUpdateInfo value, $Res Function(AppUpdateInfo) then) =
      _$AppUpdateInfoCopyWithImpl<$Res, AppUpdateInfo>;
  @useResult
  $Res call({String appVersion, bool forceUpgrade, bool recommendedUpgrade});
}

/// @nodoc
class _$AppUpdateInfoCopyWithImpl<$Res, $Val extends AppUpdateInfo>
    implements $AppUpdateInfoCopyWith<$Res> {
  _$AppUpdateInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? forceUpgrade = null,
    Object? recommendedUpgrade = null,
  }) {
    return _then(_value.copyWith(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpgrade: null == forceUpgrade
          ? _value.forceUpgrade
          : forceUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
      recommendedUpgrade: null == recommendedUpgrade
          ? _value.recommendedUpgrade
          : recommendedUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUpdateInfoCopyWith<$Res>
    implements $AppUpdateInfoCopyWith<$Res> {
  factory _$$_AppUpdateInfoCopyWith(
          _$_AppUpdateInfo value, $Res Function(_$_AppUpdateInfo) then) =
      __$$_AppUpdateInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appVersion, bool forceUpgrade, bool recommendedUpgrade});
}

/// @nodoc
class __$$_AppUpdateInfoCopyWithImpl<$Res>
    extends _$AppUpdateInfoCopyWithImpl<$Res, _$_AppUpdateInfo>
    implements _$$_AppUpdateInfoCopyWith<$Res> {
  __$$_AppUpdateInfoCopyWithImpl(
      _$_AppUpdateInfo _value, $Res Function(_$_AppUpdateInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? forceUpgrade = null,
    Object? recommendedUpgrade = null,
  }) {
    return _then(_$_AppUpdateInfo(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpgrade: null == forceUpgrade
          ? _value.forceUpgrade
          : forceUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
      recommendedUpgrade: null == recommendedUpgrade
          ? _value.recommendedUpgrade
          : recommendedUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUpdateInfo implements _AppUpdateInfo {
  const _$_AppUpdateInfo(
      {required this.appVersion,
      required this.forceUpgrade,
      required this.recommendedUpgrade});

  factory _$_AppUpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AppUpdateInfoFromJson(json);

  @override
  final String appVersion;
  @override
  final bool forceUpgrade;
  @override
  final bool recommendedUpgrade;

  @override
  String toString() {
    return 'AppUpdateInfo(appVersion: $appVersion, forceUpgrade: $forceUpgrade, recommendedUpgrade: $recommendedUpgrade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUpdateInfo &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.forceUpgrade, forceUpgrade) ||
                other.forceUpgrade == forceUpgrade) &&
            (identical(other.recommendedUpgrade, recommendedUpgrade) ||
                other.recommendedUpgrade == recommendedUpgrade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appVersion, forceUpgrade, recommendedUpgrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUpdateInfoCopyWith<_$_AppUpdateInfo> get copyWith =>
      __$$_AppUpdateInfoCopyWithImpl<_$_AppUpdateInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUpdateInfoToJson(
      this,
    );
  }
}

abstract class _AppUpdateInfo implements AppUpdateInfo {
  const factory _AppUpdateInfo(
      {required final String appVersion,
      required final bool forceUpgrade,
      required final bool recommendedUpgrade}) = _$_AppUpdateInfo;

  factory _AppUpdateInfo.fromJson(Map<String, dynamic> json) =
      _$_AppUpdateInfo.fromJson;

  @override
  String get appVersion;
  @override
  bool get forceUpgrade;
  @override
  bool get recommendedUpgrade;
  @override
  @JsonKey(ignore: true)
  _$$_AppUpdateInfoCopyWith<_$_AppUpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
