import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/pharmacy/view/widgets/pharmacy_card_widget.dart';
import 'package:izmir_test_case/app/views/pharmacy/view/widgets/pharmacy_map_widget.dart';
import 'package:izmir_test_case/app/views/pharmacy/view_model/pharmacy_view_model.dart';
import 'package:izmir_test_case/core/common/loader.dart';

/// The `PharmacyView` class is a stateful widget that displays a screen with an app bar, a loader while
/// fetching data, and a stack of a map widget and a card widget once the data is fetched.
class PharmacyView extends StatefulWidget {
  const PharmacyView({super.key});

  @override
  State<PharmacyView> createState() => _PharmacyViewState();
}

class _PharmacyViewState extends State<PharmacyView> {
  late final PharmacyViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = PharmacyViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find the nearest open pharmacy'),
      ),
      body: FutureBuilder(
        future: _viewModel.fetchPharmacies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loader();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else {
            return Stack(
              children: [
                PharmacyMapWidget(viewModel: _viewModel),
                PharmacyCardWidget(viewModel: _viewModel)
              ],
            );
          }
        },
      ),
    );
  }
}
