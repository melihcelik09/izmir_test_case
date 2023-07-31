import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:izmir_test_case/app/views/home/view_model/home_view_model.dart';
import 'package:izmir_test_case/core/common/loader.dart';

/// The `HomeView` class is a stateful widget that displays the user's current location information.
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = HomeViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loader();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else {
            return Observer(
              builder: (_) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: const Text("Latitude"),
                        subtitle: Text(_viewModel.latitude.toString()),
                      ),
                      ListTile(
                        title: const Text("Longitude"),
                        subtitle: Text(_viewModel.longitude.toString()),
                      ),
                      ListTile(
                        title: const Text("Address"),
                        subtitle: Text(_viewModel.address ?? "Address"),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
        future: _viewModel.getCurrentLocation(),
      ),
    );
  }
}
