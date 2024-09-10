import 'package:carnagef_charlie/main/presentation/agendas_screen/getx/agendas_screen_controller.dart';
import 'package:get/get.dart';

class AgendasScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(AgendasScreenController());
  }
}