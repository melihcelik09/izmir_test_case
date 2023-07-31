import 'package:dio/dio.dart';
import 'package:izmir_test_case/app/views/transport/model/line_infos_model.dart';
import 'package:izmir_test_case/app/views/transport/model/nearby_stops_model.dart';
import 'package:izmir_test_case/core/constants/api_constants.dart';
import 'package:izmir_test_case/core/init/network/dio_client.dart';

class TransportService {
  TransportService._();
  static final TransportService _instance = TransportService._();
  static TransportService get instance => _instance;
  final DioClient _dioClient = DioClient();

  /// The function fetches nearby stops based on latitude and longitude coordinates.
  Future<List<NearbyStopsModel>> fetchNearbyStops({
    String? lat,
    String? long,
  }) async {
    String location = "$lat/$long";
    Response response = await _dioClient.get(
      path: "${ApiConstants.closestStationsPath}$location",
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => NearbyStopsModel.fromJson(e))
          .toList();
    } else {
      throw Exception("Error = ${response.statusCode}");
    }
  }

  /// The function fetches line information detail and returns the response as a LineInfosModel object.
  Future<LineInfosModel> fetchLineInfoDetail({int? lineId}) async {
    Response response = await _dioClient.get(
      path: "${ApiConstants.searchTransportPath}$lineId",
    );
    if (response.statusCode == 200) {
      return LineInfosModel.fromJson(response.data);
    } else {
      throw Exception("Error = ${response.statusCode}");
    }
  }
}
