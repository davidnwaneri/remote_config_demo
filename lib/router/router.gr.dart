// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:remote_config_demo/view/src/app_update_page.dart' as _i1;
import 'package:remote_config_demo/view/src/home.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AppUpdateRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppUpdatePage(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MyHomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppUpdatePage]
class AppUpdateRoute extends _i3.PageRouteInfo<void> {
  const AppUpdateRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AppUpdateRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppUpdateRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MyHomePage]
class MyHomeRoute extends _i3.PageRouteInfo<void> {
  const MyHomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
