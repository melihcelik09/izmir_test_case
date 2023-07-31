import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';

Future<void> appConfiguration() async {
  /// Flutter framework is properly initialized before performing any other operations.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await _cacheConfiguration();
  await _envConfiguration();
  HttpOverrides.global = MyHttpOverrides();
  await _splashConfiguration(widgetsBinding);
}

/// The function initializes the GetStorage library for caching configuration.
Future<void> _cacheConfiguration() async {
  await GetStorage.init();
}

/// The function preserves the splash screen configuration in a Flutter app.
Future<void> _splashConfiguration(WidgetsBinding widgetsBinding) async {
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
}

/// The function loads environment variables using FlutterConfig.
Future<void> _envConfiguration() async {
  await FlutterConfig.loadEnvVariables();
}

/// https://stackoverflow.com/questions/66168262/flutter-certificate-verify-failed-error-while-performing-a-post-request
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
