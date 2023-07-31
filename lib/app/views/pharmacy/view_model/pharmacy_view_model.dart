import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:izmir_test_case/app/views/pharmacy/model/pharmacy_model.dart';
import 'package:izmir_test_case/app/views/pharmacy/service/pharmacy_service.dart';
import 'package:izmir_test_case/core/init/permission/permission_handler.dart';
import 'package:mobx/mobx.dart';

part 'pharmacy_view_model.g.dart';

class PharmacyViewModel = PharmacyViewModelBase with _$PharmacyViewModel;

abstract class PharmacyViewModelBase with Store {
  @observable
  ObservableList<PharmacyOnDutyModel> pharmacyList = ObservableList.of([]);
  @observable
  GoogleMapController? mapController;
  @observable
  LatLng? currentLocation;
  @observable
  PharmacyOnDutyModel? selectedPharmacy;
  @observable
  bool isVisible = false;

  @action
  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @action
  void changeVisibility(bool value) {
    isVisible = value;
  }

  @action
  void selectedMarker({required PharmacyOnDutyModel marker}) {
    selectedPharmacy = marker;
    changeVisibility(true);
  }

  @action
  Future<void> getCurrentLocation() async {
    try {
      Position position = await PermissionManager.instance.getCurrentPosition();
      currentLocation = LatLng(position.latitude, position.longitude);
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @action
  Future<ObservableList<PharmacyOnDutyModel>> fetchPharmacies() async {
    await getCurrentLocation();
    try {
      List<PharmacyOnDutyModel> data =
          await PharmacyService.instance.fetchPharmacies();
      pharmacyList = ObservableList.of(data);
      return pharmacyList;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
