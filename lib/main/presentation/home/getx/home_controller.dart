
import 'package:carnagef_charlie/main/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// [HomeController] is an GetxController for [HomePage],
/// All the necessary bindings was declared in [HomeBinding]
/// -----------------------------------------------------------
class HomeController extends GetxController with GetTickerProviderStateMixin{

  final title = "Home";
  var selectedMenuIndex = 0.obs;
  late TabController bottomNavigationController;

  // final AuthenticationCheckUseCase _authenticationCheckUseCase;
  //
  // HomeController({required AuthenticationCheckUseCase authenticationCheckUseCase})
  //     : _authenticationCheckUseCase = authenticationCheckUseCase;

  final List<NavigationBarItem> menu = <NavigationBarItem>[
    NavigationBarItem(
        icon: Icons.task_sharp,
        text: 'To-Do List'
    ),
    NavigationBarItem(
        icon: MdiIcons.outdoorLamp,
        text: 'Ideas'
    ),
    NavigationBarItem(
        icon: MdiIcons.viewAgenda,
        text: 'Agendas'
    ),
    NavigationBarItem(
        icon: Icons.note_outlined,
        text: 'Notes'
    ),
  ];

  @override
  void onInit() async {
    super.onInit();

    bottomNavigationController = TabController(length: 4, vsync: this, initialIndex: 0);
    bottomNavigationController.addListener((){
      debugPrint("Home Controller => masuk ke index ${bottomNavigationController.index}");
      selectedMenuIndex.value = bottomNavigationController.index;
    });
  }
}