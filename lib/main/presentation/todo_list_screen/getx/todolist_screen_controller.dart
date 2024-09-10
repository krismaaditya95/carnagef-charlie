import 'dart:async';
import 'package:carnagef_charlie/main/data/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodolistScreenController extends GetxController{

  final title = "To-Do List";

  TextEditingController searchController = TextEditingController();

  final List<TodoModel> todosDummyData = <TodoModel>[
    TodoModel(
      isTaskFinished: false.obs,
      todoTitle: 'Mandi',
      todoDescription: 'Udah seminggu gak mandi.. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      todoDueDate: '09-10-2024'
    ),

    TodoModel(
        isTaskFinished: true.obs,
        todoTitle: 'Makan',
        todoDescription: 'Udah sebulan gak makan. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        todoDueDate: '09-10-2024'
    ),

    TodoModel(
        isTaskFinished: true.obs,
        todoTitle: 'Coding',
        todoDescription: 'Coding pakai vim ya.. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        todoDueDate: '09-10-2024'
    ),

    TodoModel(
        isTaskFinished: false.obs,
        todoTitle: 'Workout',
        todoDescription: 'Push up 1000x. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        todoDueDate: '09-10-2024'
    ),

    TodoModel(
        isTaskFinished: true.obs,
        todoTitle: 'RAKIT PC',
        todoDescription: 'Mending rakit PC. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        todoDueDate: '09-10-2024'
    ),

    TodoModel(
        isTaskFinished: true.obs,
        todoTitle: 'Nyuci Motor',
        todoDescription: 'Motor Honda beat. Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        todoDueDate: '09-10-2024'
    ),
  ];

  @override
  void onInit() async {
    super.onInit();
  }
}