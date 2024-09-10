import 'package:carnagef_charlie/main/presentation/todo_list_screen/getx/todolist_screen_controller.dart';
import 'package:get/get.dart';

class TodolistScreenBinding extends Bindings{
  @override
  void dependencies() {

    Get.put(TodolistScreenController());
  }
}