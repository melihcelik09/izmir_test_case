import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/transport/model/nearby_stops_model.dart';
import 'package:izmir_test_case/app/views/transport/view_model/transport_view_model.dart';

/// The `NearbyStopsWidget` class is a stateless widget that displays a list of nearby stops using the
/// `ListView.builder` widget.
class NearbyStopsWidget extends StatelessWidget {
  const NearbyStopsWidget({super.key, required this.viewModel});

  final TransportViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: viewModel.nearbyStops.length,
      itemBuilder: (context, index) {
        NearbyStopsModel target = viewModel.nearbyStops[index];
        return ListTile(
          leading: const Icon(Icons.directions_bus),
          title: Text(target.name ?? ''),
          trailing: Text('${target.distance?.toStringAsFixed(2)} m'),
        );
      },
    );
  }
}
