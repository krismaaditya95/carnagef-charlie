import 'dart:async';
import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:carnagef_charlie/main/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// [LoginController] is an GetxController for [LoginPage],
/// The binding was delcared in [LoginBinding]
/// -----------------------------------------------------------
class LoginController extends GetxController{

  final title = "Login";
  final formKey = GlobalKey<FormState>();
  var isLoginLoading = false.obs;
  var isRememberMeChecked = false.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUsernamePassword() async {
    isLoginLoading.value = true;

    final email = emailController.text;
    final password = passwordController.text;

    debugPrint('LoginController => USERNAME: $email, PASSWORD: $password');

    // dummy loading 5 secs
    
    Future.delayed(const Duration(seconds: 5)).then((_){
      if(email == "test@gmail.com" && password == "1234"){
        Get.snackbar('Login Sukses!', '',
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 3),
            colorText: AppThemes.cerise
        );
        Get.offAllNamed(HomePage.routeName);
      }else{
        Get.snackbar('Login Gagal', 'Email dan password Anda salah',
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 3),
            colorText: AppThemes.cerise
        );
      }

      isLoginLoading.value = false;
    });
  }

}