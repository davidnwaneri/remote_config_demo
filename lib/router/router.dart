import 'package:auto_route/auto_route.dart';
import 'package:remote_config_demo/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: MyHomeRoute.page,
    ),
  ];
}
