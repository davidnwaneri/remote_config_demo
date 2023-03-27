import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remote_config_demo/router/router.dart';
import 'package:remote_config_demo/startup/bloc/bloc/startup_bloc.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    BlocProvider(
      create: (context) => StartupBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;

  @override
  initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeSplashScreen();
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
      routerConfig: _appRouter.config(),
    );
  }
}
