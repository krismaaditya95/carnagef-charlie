
import 'package:carnagef_charlie/core/constants/assets.dart';
import 'package:carnagef_charlie/main/presentation/splash_screen/getx/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends GetView<SplashController> {

  static const String routeName = '/splash-screen-page';
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            appIcon,
            width: 160,
          )
        )
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
