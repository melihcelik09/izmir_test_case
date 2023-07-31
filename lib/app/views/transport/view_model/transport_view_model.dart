import 'package:geolocator/geolocator.dart';
import 'package:izmir_test_case/app/views/transport/model/nearby_stops_model.dart';
import 'package:izmir_test_case/app/views/transport/model/line_infos_model.dart';
import 'package:izmir_test_case/app/views/transport/service/transport_service.dart';
import 'package:izmir_test_case/core/init/permission/permission_handler.dart';
import 'package:mobx/mobx.dart';

part 'transport_view_model.g.dart';

class TransportViewModel = TransportViewModelBase with _$TransportViewModel;

abstract class TransportViewModelBase with Store {
  @observable
  ObservableList<NearbyStopsModel> nearbyStops = ObservableList.of([]);

  @observable
  ObservableList<PassingLinesModel> lineInfos = ObservableList.of([]);

  @observable
  ObservableSet<int> uniqueLines = ObservableSet.of({});

  @observable
  ObservableList<LinesModel> lines = ObservableList.of([]);

  /// The function fetches nearby stops using the user's current position and returns a list of nearby
  /// stops.
  @action
  Future<ObservableList<NearbyStopsModel>> fetchNearbyStops() async {
    try {
      Position position = await PermissionManager.instance.getCurrentPosition();
      List<NearbyStopsModel> data =
          await TransportService.instance.fetchNearbyStops(
        lat: position.latitude.toString(),
        long: position.longitude.toString(),
      );
      nearbyStops = ObservableList.of(data);
      createLineInfos();
      return nearbyStops;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  /// The function creates a list of unique line information objects from a list of nearby stops, and
  /// sorts them by route number.
  @action
  void createLineInfos() {
    for (NearbyStopsModel stop in nearbyStops) {
      if (stop.passingLines != null) {
        for (PassingLinesModel passingLine in stop.passingLines!) {
          if (!uniqueLines.contains(passingLine.routeNumber)) {
            uniqueLines.add(passingLine.routeNumber!);
            lineInfos.add(passingLine);
          }
        }
      }
    }
    lineInfos.sort((a, b) => a.routeNumber!.compareTo(b.routeNumber!));
    lineInfos = ObservableList.of(lineInfos);
  }

  /// The function fetches line information details for a given route number and returns a list of
  /// LinesModel objects.
  @action
  Future<List<LinesModel>?> fetchLineInfoDetail({
    int? routeNumber,
  }) async {
    try {
      LineInfosModel data = await TransportService.instance.fetchLineInfoDetail(
        lineId: routeNumber,
      );
      lines = ObservableList.of(data.lines ?? []);
      return lines;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
