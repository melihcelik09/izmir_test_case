import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:izmir_test_case/core/init/navigation/index.dart';
import 'package:izmir_test_case/core/init/permission/permission_handler.dart';

class TestCaseApp extends StatefulWidget {
  const TestCaseApp({super.key});

  @override
  State<TestCaseApp> createState() => _TestCaseAppState();
}

class _TestCaseAppState extends State<TestCaseApp> {
  final PermissionManager _manager = PermissionManager.instance;
  @override
  void initState() {
    super.initState();
    controlPermission().then((_) => FlutterNativeSplash.remove());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: ThemeData.dark(useMaterial3: true),
    );
  }

  /// The function `controlPermission` checks and redirects the user.
  Future<void> controlPermission() async {
    await _manager.checkAndRedirect();
  }
}
