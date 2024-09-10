import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:carnagef_charlie/main/presentation/agendas_screen/getx/agendas_screen_binding.dart';
import 'package:carnagef_charlie/main/presentation/agendas_screen/pages/agendas_screen_page.dart';
import 'package:carnagef_charlie/main/presentation/home/getx/home_controller.dart';
import 'package:carnagef_charlie/main/presentation/ideas_screen/getx/ideas_screen_binding.dart';
import 'package:carnagef_charlie/main/presentation/ideas_screen/pages/ideas_screen_page.dart';
import 'package:carnagef_charlie/main/presentation/notes_screen/getx/notes_screen_binding.dart';
import 'package:carnagef_charlie/main/presentation/notes_screen/pages/notes_screen_page.dart';
import 'package:carnagef_charlie/main/presentation/todo_list_screen/getx/todolist_screen_binding.dart';
import 'package:carnagef_charlie/main/presentation/todo_list_screen/pages/todo_list_screen_page.dart';
import 'package:carnagef_charlie/main/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {

  static const String routeName = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller.bottomNavigationController,
        children: [
          Builder(builder: (context){
            TodolistScreenBinding().dependencies();
            return const TodoListScreenPage();
          }),
          Builder(builder: (context){
            IdeasScreenBinding().dependencies();
            return const IdeasScreenPage();
          }),
          Builder(builder: (context){
            AgendasScreenBinding().dependencies();
            return const AgendasScreenPage();
          }),
          Builder(builder: (context){
            NotesScreenBinding().dependencies();
            return const NotesScreenPage();
          }),
        ],
      ),

      bottomNavigationBar: const CustomBottomNavigationBar(
        foregroundColor: Colors.black54,
        backgroundColor: Colors.white,
        selectedColor: AppThemes.cerise,
      ),
      resizeToAvoidBottomInset: false,

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
