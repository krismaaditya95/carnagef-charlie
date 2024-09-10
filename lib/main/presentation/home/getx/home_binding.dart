import 'package:carnagef_charlie/main/presentation/home/getx/home_controller.dart';
import 'package:get/get.dart';

/// Bindings for [HomePage]
class HomeBinding extends Bindings{

  @override
  Future<void> dependencies() async {

    // Get.put(HomeController(
    //     authenticationCheckUseCase: Get.find<AuthenticationCheckUseCase>()
    // ));
    Get.put(HomeController());
  }
}