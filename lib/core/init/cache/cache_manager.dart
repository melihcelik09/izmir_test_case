/// The `CacheManager` class is a generic class that provides methods for reading, writing, and deleting
/// data from a storage using the GetStorage package in Dart.
import 'package:get_storage/get_storage.dart';

class CacheManager<T> {
  final GetStorage _box;
  CacheManager() : _box = GetStorage();

  T? readData({required String key}) {
    return _box.read(key);
  }

  Future<void> writeData({required String key, required T value}) async {
    await _box.write(key, value);
  }

  Future<void> deleteData({required String key}) async {
    await _box.remove(key);
  }

  Future<void> deleteAllData() async {
    await _box.erase();
  }
}

enum CacheManagerEnum { location }
