import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/transport/view/widgets/line_infos_widget.dart';
import 'package:izmir_test_case/app/views/transport/view/widgets/nearby_stops_widget.dart';
import 'package:izmir_test_case/app/views/transport/view_model/transport_view_model.dart';
import 'package:izmir_test_case/core/common/loader.dart';

/// The `TransportView` class is a stateful widget that displays a tabbed view with two tabs: "Nearby
/// Stops" and "Line Infos", and fetches data from the `TransportViewModel` to populate the respective
/// tab views.
class TransportView extends StatefulWidget {
  const TransportView({super.key});

  @override
  State<TransportView> createState() => _TransportViewState();
}

class _TransportViewState extends State<TransportView> {
  late final TransportViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = TransportViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Transport'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Nearby Stops'),
              Tab(text: 'Line Infos'),
            ],
          ),
        ),
        body: FutureBuilder(
          future: _viewModel.fetchNearbyStops(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loader();
            } else if (snapshot.hasError) {
              return Center(child: Text('${snapshot.error}'));
            } else {
              return TabBarView(
                children: [
                  NearbyStopsWidget(viewModel: _viewModel),
                  LineInfosWidget(viewModel: _viewModel),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
