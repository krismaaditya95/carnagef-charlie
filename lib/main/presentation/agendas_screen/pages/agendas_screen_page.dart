import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:carnagef_charlie/core/constants/assets.dart';
import 'package:carnagef_charlie/main/presentation/agendas_screen/getx/agendas_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgendasScreenPage extends GetView<AgendasScreenController> {

  static const String routeName = '/agendas-screen-page';
  const AgendasScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                appIcon,
                width: 60,
              ),

              Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text("This Feature is Coming Soon :)",
                      style: TextStyle(color: AppThemes.cerise, fontSize: 20)
                  )
              ),

            ],
          )
        )
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
