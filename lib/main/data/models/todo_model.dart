import 'package:get/get.dart';

class TodoModel{
  RxBool? isTaskFinished;
  String? todoTitle;
  String? todoDescription;
  String? todoDueDate;

  TodoModel({
    this.isTaskFinished,
    this.todoTitle,
    this.todoDescription,
    this.todoDueDate
  });
}