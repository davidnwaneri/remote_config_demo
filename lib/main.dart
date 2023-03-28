import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:remote_config_demo/firebase_options.dart';
import 'package:remote_config_demo/in_app_update_checker/app_upate_checker.dart';
import 'package:remote_config_demo/model/app_update_info.dart';
import 'package:remote_config_demo/router/router.dart';
import 'package:remote_config_demo/router/router.gr.dart';
import 'package:remote_config_demo/startup/bloc/bloc/startup_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:remote_config_demo/utils/app_logger.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final IRemoteConfigAppUpdateChecker appUpdateChecker =
      RemoteConfigAndriodAppUpdateChecker(
    appInfo: await PackageInfo.fromPlatform(),
    remoteConfig: FirebaseRemoteConfig.instance,
  );

  await appUpdateChecker.init();

  runApp(
    BlocProvider(
      create: (context) => StartupBloc(),
      child: MyApp(
        appUpdateChecker: appUpdateChecker,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.appUpdateChecker,
  });

  final IRemoteConfigAppUpdateChecker appUpdateChecker;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;
  AppUpdateInfo? _appUpdateInfo;

  @override
  initState() {
    super.initState();
    _appRouter = AppRouter();
    _getAppUpdateInfo();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeSplashScreen();
  }

  void _getAppUpdateInfo() {
    _appUpdateInfo = widget.appUpdateChecker.appUpdateInfo();
    'AppUpdateInfo: $_appUpdateInfo'.log();
  }

  void _removeSplashScreen() {
    final startupBloc = context.watch<StartupBloc>();
    startupBloc.state.maybeWhen(
      orElse: () {},
      loaded: () {
        FlutterNativeSplash.remove();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: _appRouter.config(
        initialRoutes: [
          if (_appUpdateInfo != null) const AppUpdateRoute(),
        ],
      ),
    );
  }
}
