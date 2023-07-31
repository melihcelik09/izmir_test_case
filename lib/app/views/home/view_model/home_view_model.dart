import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:izmir_test_case/core/init/permission/permission_handler.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  @observable
  double? latitude;

  @observable
  double? longitude;

  @observable
  String? address;

  final PermissionManager _manager = PermissionManager.instance;

  /// The function `getCurrentLocation` retrieves the current position of the device and obtains the
  /// corresponding address, latitude, and longitude.
  @action
  Future<void> getCurrentLocation() async {
    Position position = await _manager.getCurrentPosition();
    Placemark? placemark = await _manager.getAddressFromCoordinates(
      position,
    );
    address = placemark?.street;
    latitude = position.latitude;
    longitude = position.longitude;
  }
}
