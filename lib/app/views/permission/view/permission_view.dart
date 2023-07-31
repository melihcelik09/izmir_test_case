import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:izmir_test_case/app/views/permission/view_model/permission_view_model.dart';
import 'package:izmir_test_case/core/extensions/context_extension.dart';

/// The `PermissionView` class is a stateful widget that displays a message, an icon, and a button to
/// grant location permission.
class PermissionView extends StatefulWidget {
  const PermissionView({super.key});

  @override
  State<PermissionView> createState() => _PermissionViewState();
}

class _PermissionViewState extends State<PermissionView> {
  late final PermissionViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = PermissionViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          spacing: context.mediumValue,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Text("Please grant location permission."),
            const Icon(Icons.location_pin),
            Observer(
              builder: (_) {
                return ElevatedButton(
                  onPressed: () => _viewModel.grantPermission(),
                  child: const Text("Grant Permission"),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
