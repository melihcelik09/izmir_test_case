import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:izmir_test_case/app/views/pharmacy/model/pharmacy_model.dart';
import 'package:izmir_test_case/app/views/pharmacy/view_model/pharmacy_view_model.dart';
import 'package:izmir_test_case/core/extensions/context_extension.dart';

/// The `PharmacyMapWidget` class is a Dart widget that displays a Google Map with markers representing
/// pharmacies, and allows the user to interact with the map.
class PharmacyMapWidget extends StatelessWidget {
  const PharmacyMapWidget({super.key, required this.viewModel});
  final PharmacyViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return GoogleMap(
          padding: context.paddingNormal,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          compassEnabled: false,
          onMapCreated: viewModel.onMapCreated,
          initialCameraPosition: CameraPosition(
            target: viewModel.currentLocation ?? const LatLng(0, 0),
            zoom: 12,
          ),
          markers: _createMarkers(
            pharmacyList: viewModel.pharmacyList,
          ),
        );
      },
    );
  }

 /// The function `_createMarkers` takes a list of `PharmacyOnDutyModel` objects and returns a set of
 /// markers with specific properties for each object in the list.
  _createMarkers({required List<PharmacyOnDutyModel> pharmacyList}) {
    return pharmacyList
        .map(
          (e) => Marker(
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueViolet,
            ),
            markerId: MarkerId(e.name ?? "No name"),
            position: LatLng(
              double.parse(e.locationX ?? "0"),
              double.parse(e.locationY ?? "0"),
            ),
            onTap: () => viewModel.selectedMarker(marker: e),
          ),
        )
        .toSet();
  }
}
