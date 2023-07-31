/// The `NavigationService` class is an implementation of the `INavigationService` interface in Dart,
/// which provides methods for navigating to different pages in a Flutter application.
import 'package:flutter/material.dart';

abstract class INavigationService {
  Future<void> navigateToPage({String? path, Object? data});
  Future<void> navigateToPageClear({String? path, Object? data});
}

class NavigationService implements INavigationService {
  NavigationService._();
  static final NavigationService _instance = NavigationService._();
  static NavigationService get instance => _instance;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  bool removeAllOldRoutes(Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({String? path, Object? data}) async {
    await navigatorKey.currentState!
        .pushNamedAndRemoveUntil(path!, removeAllOldRoutes, arguments: data);
  }
}
