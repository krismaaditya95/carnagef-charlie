
import 'package:carnagef_charlie/main/presentation/login/getx/login_controller.dart';
import 'package:get/get.dart';

/// Bindings for [Login]
class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}