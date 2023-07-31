import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/transport/model/line_infos_model.dart';
import 'package:izmir_test_case/core/extensions/context_extension.dart';

/// The `LineInfosDetailWidget` class is a stateless widget that displays a list of lines with their
/// names and route descriptions.
class LineInfosDetailWidget extends StatelessWidget {
  const LineInfosDetailWidget({super.key, required this.response});
  final List<LinesModel> response;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: context.paddingNormal,
      itemCount: response.length,
      itemBuilder: (context, index) {
        LinesModel target = response[index];
        return ListTile(
          leading: const Icon(Icons.directions_bus),
          title: Text(target.name ?? ''),
          subtitle: Text(target.routeDescription ?? ''),
        );
      },
    );
  }
}
