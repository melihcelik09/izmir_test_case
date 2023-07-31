import 'package:flutter/material.dart';
import 'package:izmir_test_case/app/views/transport/model/line_infos_model.dart';
import 'package:izmir_test_case/app/views/transport/model/nearby_stops_model.dart';
import 'package:izmir_test_case/app/views/transport/view/widgets/line_infos_detail_widget.dart';
import 'package:izmir_test_case/app/views/transport/view_model/transport_view_model.dart';

/// The LineInfosWidget class is a stateless widget that displays a list of line information and allows
/// the user to tap on each item to view more details in a modal bottom sheet.
class LineInfosWidget extends StatelessWidget {
  const LineInfosWidget({super.key, required this.viewModel});

  final TransportViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: viewModel.lineInfos.length,
      itemBuilder: (context, index) {
        PassingLinesModel target = viewModel.lineInfos[index];
        return ListTile(
          onTap: () async {
            List<LinesModel>? response = await viewModel.fetchLineInfoDetail(
              routeNumber: target.routeNumber,
            );
            if (response == null) return;
            if (context.mounted) {
              await showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                builder: (context) {
                  return LineInfosDetailWidget(response: response);
                },
              );
            }
          },
          title: Text(target.name ?? ''),
          trailing: CircleAvatar(
            child: Text(
              target.routeNumber.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
