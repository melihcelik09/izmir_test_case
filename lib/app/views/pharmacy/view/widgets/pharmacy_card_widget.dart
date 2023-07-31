import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:izmir_test_case/app/views/pharmacy/view_model/pharmacy_view_model.dart';

/// The `PharmacyCardWidget` class is a Dart widget that displays information about a selected pharmacy,
/// including its name, address, and phone number, in a card format.
class PharmacyCardWidget extends StatelessWidget {
  const PharmacyCardWidget({super.key, required this.viewModel});
  final PharmacyViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Visibility(
          visible: viewModel.isVisible,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              child: ListTile(
                title: Text(
                  viewModel.selectedPharmacy?.name ?? "",
                ),
                subtitle: Text(
                  viewModel.selectedPharmacy?.address ?? "",
                ),
                trailing: Text(
                  viewModel.selectedPharmacy?.phone ?? "",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
