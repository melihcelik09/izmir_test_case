// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PharmacyViewModel on PharmacyViewModelBase, Store {
  late final _$pharmacyListAtom =
      Atom(name: 'PharmacyViewModelBase.pharmacyList', context: context);

  @override
  ObservableList<PharmacyOnDutyModel> get pharmacyList {
    _$pharmacyListAtom.reportRead();
    return super.pharmacyList;
  }

  @override
  set pharmacyList(ObservableList<PharmacyOnDutyModel> value) {
    _$pharmacyListAtom.reportWrite(value, super.pharmacyList, () {
      super.pharmacyList = value;
    });
  }

  late final _$mapControllerAtom =
      Atom(name: 'PharmacyViewModelBase.mapController', context: context);

  @override
  GoogleMapController? get mapController {
    _$mapControllerAtom.reportRead();
    return super.mapController;
  }

  @override
  set mapController(GoogleMapController? value) {
    _$mapControllerAtom.reportWrite(value, super.mapController, () {
      super.mapController = value;
    });
  }

  late final _$currentLocationAtom =
      Atom(name: 'PharmacyViewModelBase.currentLocation', context: context);

  @override
  LatLng? get currentLocation {
    _$currentLocationAtom.reportRead();
    return super.currentLocation;
  }

  @override
  set currentLocation(LatLng? value) {
    _$currentLocationAtom.reportWrite(value, super.currentLocation, () {
      super.currentLocation = value;
    });
  }

  late final _$selectedPharmacyAtom =
      Atom(name: 'PharmacyViewModelBase.selectedPharmacy', context: context);

  @override
  PharmacyOnDutyModel? get selectedPharmacy {
    _$selectedPharmacyAtom.reportRead();
    return super.selectedPharmacy;
  }

  @override
  set selectedPharmacy(PharmacyOnDutyModel? value) {
    _$selectedPharmacyAtom.reportWrite(value, super.selectedPharmacy, () {
      super.selectedPharmacy = value;
    });
  }

  late final _$isVisibleAtom =
      Atom(name: 'PharmacyViewModelBase.isVisible', context: context);

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  late final _$getCurrentLocationAsyncAction =
      AsyncAction('PharmacyViewModelBase.getCurrentLocation', context: context);

  @override
  Future<void> getCurrentLocation() {
    return _$getCurrentLocationAsyncAction
        .run(() => super.getCurrentLocation());
  }

  late final _$fetchPharmaciesAsyncAction =
      AsyncAction('PharmacyViewModelBase.fetchPharmacies', context: context);

  @override
  Future<ObservableList<PharmacyOnDutyModel>> fetchPharmacies() {
    return _$fetchPharmaciesAsyncAction.run(() => super.fetchPharmacies());
  }

  late final _$PharmacyViewModelBaseActionController =
      ActionController(name: 'PharmacyViewModelBase', context: context);

  @override
  void onMapCreated(GoogleMapController controller) {
    final _$actionInfo = _$PharmacyViewModelBaseActionController.startAction(
        name: 'PharmacyViewModelBase.onMapCreated');
    try {
      return super.onMapCreated(controller);
    } finally {
      _$PharmacyViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeVisibility(bool value) {
    final _$actionInfo = _$PharmacyViewModelBaseActionController.startAction(
        name: 'PharmacyViewModelBase.changeVisibility');
    try {
      return super.changeVisibility(value);
    } finally {
      _$PharmacyViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectedMarker({required PharmacyOnDutyModel marker}) {
    final _$actionInfo = _$PharmacyViewModelBaseActionController.startAction(
        name: 'PharmacyViewModelBase.selectedMarker');
    try {
      return super.selectedMarker(marker: marker);
    } finally {
      _$PharmacyViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pharmacyList: ${pharmacyList},
mapController: ${mapController},
currentLocation: ${currentLocation},
selectedPharmacy: ${selectedPharmacy},
isVisible: ${isVisible}
    ''';
  }
}
