import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:carnagef_charlie/core/constants/assets.dart';
import 'package:carnagef_charlie/main/presentation/login/getx/login_controller.dart';
import 'package:carnagef_charlie/main/presentation/widgets/general_button.dart';
import 'package:carnagef_charlie/main/presentation/widgets/social_media_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends GetView<LoginController> {

  static const String routeName = '/login-page';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Container(
            // height: double.infinity,
            // width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50, left: 10),
                      child: Image.asset(
                        appIcon,
                        width: 80,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: const EdgeInsets.only(left: 38, bottom: 40),
                  child: const Text("LOGIN", style: TextStyle(color: Colors.black87, fontSize: 20))
                ),

                Container(
                  margin: const EdgeInsets.only(left: 38, right: 38),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // EMAIL
                        Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: const Text("E-mail", style: TextStyle(color: Colors.black87, fontSize: 14))
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          // height: 100,
                          child: TextFormField(
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                  ),
                                borderRadius: BorderRadius.all(Radius.circular(6))
                              ),
                              hintText: "e-mail",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            style: const TextStyle(color: Colors.black87),
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Enter your E-mail';
                              }
                              return null;
                            },
                          ),
                        ),

                        // Password
                        Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: const Text("Password", style: TextStyle(color: Colors.black87, fontSize: 14))
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 0),
                          child: TextFormField(
                            controller: controller.passwordController,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(16),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(6))
                                ),
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                            obscureText: true,
                            style: const TextStyle(color: Colors.black87),
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Enter your password';
                              }
                              return null;
                            },
                          ),
                        ),

                        Obx(() =>
                            Container(
                              margin: const EdgeInsets.only(bottom: 30),
                              child: Row(
                                children: [
                                  Checkbox(
                                      side: const BorderSide(
                                        color: AppThemes.cerise,
                                        width: 2,
                                      ),
                                      activeColor: AppThemes.cerise,
                                      value: controller.isRememberMeChecked.value,
                                      onChanged: (value) {
                                        if (controller.isRememberMeChecked.value ==
                                            false) {
                                          controller.isRememberMeChecked.value = true;
                                        } else {
                                          controller.isRememberMeChecked.value = false;
                                        }
                                      }),
                                  const Text("Remember me", style: TextStyle(color: Colors.black87, fontSize: 14)),
                                ],
                              ),
                            )
                        ),

                        Obx((){
                          if(controller.isLoginLoading.value == true){
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 40),
                                  child: const CircularProgressIndicator(
                                    color: AppThemes.cerise,
                                  ),
                                ),
                                const Text('Logging you in, please wait...', style: TextStyle(
                                    fontSize: 16,
                                  color: AppThemes.cerise,
                                ))
                              ],
                            );
                          }else{
                            return GeneralButton(
                              fontColor: Colors.white,
                              backgroundColor: AppThemes.cerise,
                              borderColor: AppThemes.cerise,
                              minimumSize: const Size(double.infinity, 50),
                              text: "LOGIN",
                              callback: () async {
                                  if(controller.formKey.currentState!.validate()){
                                    // if form is valid
                                    controller.loginUsernamePassword();
                                  }
                              }
                            );
                          }
                        }),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Get.snackbar('Button Forgot password dipencet', '',
                                    snackPosition: SnackPosition.BOTTOM,
                                    duration: const Duration(seconds: 3),
                                    colorText: Colors.black54
                                );
                              },
                              child: Container(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: const Text("Forgot Password?", style: TextStyle(color: Colors.grey, fontSize: 14))
                              ),
                            ),
                          ],
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Stack(
                            children: [
                              const Divider(
                                thickness: 1,
                              ),
                              Align(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(6)),
                                  ),
                                  child: const Text("OR", style: TextStyle(color: Colors.grey, fontSize: 14)),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              SocialMediaCircleButton(
                                callback: () {  },
                                iconData: MdiIcons.google,
                                iconColor: Colors.red,
                                borderColor: Colors.red,
                              ),
                              SocialMediaCircleButton(
                                callback: () {  },
                                iconData: MdiIcons.facebook,
                                iconColor: Colors.blue,
                                borderColor: Colors.blue,
                              ),
                              SocialMediaCircleButton(
                                callback: () {  },
                                iconData: MdiIcons.linkedin,
                                iconColor: Colors.blueAccent,
                                borderColor: Colors.blueAccent,
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                                  child: const Text("Need an account?", style: TextStyle(color: Colors.grey, fontSize: 14))
                              ),
                              InkWell(
                                onTap: (){
                                  Get.snackbar('SIGN UP button dipencet', '',
                                      snackPosition: SnackPosition.BOTTOM,
                                      duration: const Duration(seconds: 3),
                                      colorText: Colors.black54
                                  );
                                },
                                child: Container(
                                    padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                                    child: const Text("SIGN UP", style: TextStyle(color: Colors.grey, fontSize: 14))
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: const Text(
                      "2024 \u00a9 Albertus Krisma Aditya Giovanni",
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                )
              ],
            )
          ),
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
