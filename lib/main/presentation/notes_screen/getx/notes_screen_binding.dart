import 'package:carnagef_charlie/main/presentation/notes_screen/getx/notes_screen_controller.dart';
import 'package:get/get.dart';

class NotesScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(NotesScreenController());
  }
}