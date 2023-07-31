import 'package:izmir_test_case/core/init/permission/permission_handler.dart';
import 'package:mobx/mobx.dart';

part 'permission_view_model.g.dart';

class PermissionViewModel = PermissionViewModelBase with _$PermissionViewModel;

abstract class PermissionViewModelBase with Store {
  final PermissionManager _manager = PermissionManager.instance;
/// The function `grantPermission` asynchronously handles a permission request.
  Future<void> grantPermission() async {
    await _manager.handle();
  }
}
