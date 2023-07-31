import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/base/view/base_view.dart';
import 'package:izmir_test_case/app/views/permission/view/permission_view.dart';
import 'package:izmir_test_case/app/views/pharmacy/view/pharmacy_view.dart';
import 'package:izmir_test_case/app/views/transport/view/transport_view.dart';
import 'package:izmir_test_case/core/constants/navigation_constants.dart';

/// The `NavigationRoute` class is a singleton class that generates routes for different views in a Dart
/// application.
class NavigationRoute {
  NavigationRoute._();
  static final NavigationRoute _instance = NavigationRoute._();
  static NavigationRoute get instance => _instance;
  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.base:
        return navigate(const BaseView());
      case NavigationConstants.permission:
        return navigate(const PermissionView());
      case NavigationConstants.pharmacy:
        return navigate(const PharmacyView());
      case NavigationConstants.transport:
        return navigate(const TransportView());
      default:
        return navigate(
          Center(
            child: Text('No route defined for ${args.name}'),
          ),
        );
    }
  }

  MaterialPageRoute navigate(Widget widget, {RouteSettings? routeSettings}) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: routeSettings,
    );
  }
}
