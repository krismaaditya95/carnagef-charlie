import 'package:carnagef_charlie/main/presentation/splash_screen/getx/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}