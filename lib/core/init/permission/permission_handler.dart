import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:izmir_test_case/core/constants/navigation_constants.dart';
import 'package:izmir_test_case/core/init/navigation/index.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  PermissionManager._();
  static final PermissionManager _instance = PermissionManager._();
  static PermissionManager get instance => _instance;

  final NavigationService _navigate = NavigationService.instance;

  /// The function checks the status of the location permission and navigates to a specific page based
  /// on the permission status.
  Future<void> handle() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      PermissionStatus status = await Permission.location.status;
      switch (status) {
        case PermissionStatus.denied:
          PermissionStatus newStatus = await Permission.location.request();
          if (newStatus.isGranted) {
            _navigate.navigateToPageClear(
              path: NavigationConstants.base,
            );
          }
          break;
        case PermissionStatus.granted:
          _navigate.navigateToPageClear(
            path: NavigationConstants.base,
          );
          break;
        case PermissionStatus.permanentlyDenied:
          openAppSettings();
          break;
        default:
          break;
      }
    } else {
      openAppSettings();
    }
  }

  /// The function checks the status of location permission and redirects the user to different pages
  /// based on the permission status.
  Future<void> checkAndRedirect() async {
    PermissionStatus status = await Permission.location.status;
    if (status.isGranted) {
      _navigate.navigateToPageClear(
        path: NavigationConstants.base,
      );
    } else {
      _navigate.navigateToPageClear(
        path: NavigationConstants.permission,
      );
    }
  }

  /// The function `getCurrentPosition` returns a `Future` that resolves to the current position using
  /// the Geolocator plugin in Dart, with a desired accuracy of high.
  Future<Position> getCurrentPosition() async {
    try {
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      throw Exception("Failed to get current position: $e");
    }
  }

  /// The function `getAddressFromCoordinates` takes a `Position` object and returns the corresponding
  /// `Placemark` object containing the address information, or `null` if no placemarks are found.
  Future<Placemark?> getAddressFromCoordinates(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      return placemarks.isNotEmpty ? placemarks[0] : null;
    } catch (e) {
      throw Exception("Failed to get address from coordinates: $e");
    }
  }
}
