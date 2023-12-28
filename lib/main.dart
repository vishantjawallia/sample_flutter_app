// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:sample_flutter_app/config/config.dart';
import 'package:sample_flutter_app/config/routes.dart';
import 'package:sample_flutter_app/theme/theme.dart';
import 'core/provider_injector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/splash/splash_view.dart';

void main() async {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    MultiProvider(
      providers: ProviderInjector.providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: _key,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      title: APP_NAME,
      theme: CustomTheme.light,
      routes: Routes.routes,
      initialRoute: SplashView.routeName,
    );
  }
}
