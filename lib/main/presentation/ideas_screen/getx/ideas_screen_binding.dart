import 'package:carnagef_charlie/main/presentation/ideas_screen/getx/ideas_screen_controller.dart';
import 'package:get/get.dart';

class IdeasScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(IdeasScreenController());
  }
}