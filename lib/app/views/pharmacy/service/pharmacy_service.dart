import 'package:dio/dio.dart';
import 'package:izmir_test_case/app/views/pharmacy/model/pharmacy_model.dart';
import 'package:izmir_test_case/core/constants/api_constants.dart';
import 'package:izmir_test_case/core/init/network/dio_client.dart';

class PharmacyService {
  PharmacyService._();
  static final PharmacyService _instance = PharmacyService._();
  static PharmacyService get instance => _instance;

  final DioClient _dioClient = DioClient();

  /// The function fetches a list of pharmacies on duty from an API and returns it as a list of
  /// PharmacyOnDutyModel objects.
  Future<List<PharmacyOnDutyModel>> fetchPharmacies() async {
    Response response = await _dioClient.get(path: ApiConstants.pharmacyPath);
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => PharmacyOnDutyModel.fromJson(e))
          .toList();
    } else {
      throw Exception("Error = ${response.statusCode}");
    }
  }
}
