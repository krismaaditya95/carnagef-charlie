import 'dart:async';
import 'package:carnagef_charlie/main/presentation/home/pages/home_page.dart';
import 'package:carnagef_charlie/main/presentation/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// [SplashController] is an GetxController for [SplashScreenPage]
/// The binding was declared in [SplashBinding]
/// -----------------------------------------------------------
class SplashController extends GetxController{

  final title = "Splash";

  // final AuthenticationCheckUseCase _authenticationCheckUseCase;
  //
  // SplashController({required AuthenticationCheckUseCase authenticationCheckUseCase})
  //     : _authenticationCheckUseCase = authenticationCheckUseCase;

  @override
  void onInit() async {
    super.onInit();

    /// Hold this splash screen page for given [seconds] before calling [checkSessionStatus]
    Timer(const Duration(seconds: 3), () async {
      Get.offAllNamed(LoginPage.routeName);
    });
    // await checkSessionStatus();
  }

  // final accountDetailResponseResult = Rxn<DataWrapper<AccountDetailResponseEntity>>(DataWrapper.init());
  // DataWrapper<AccountDetailResponseEntity>? get getAccountDetailResponse => accountDetailResponseResult.value;
  // AccountDetailResponseEntity get accountDetailResponseEntity => getAccountDetailResponse!.data ?? const AccountDetailResponseEntity();

  /// Check SESSION STATUS, by checking Hive for stored
  /// [tokenExpireDate], [requestToken], and [sessionId]
  /// if the [sessionId] is null or equal '' then user directed to [LoginPage]
  ///
  /// Otherwise, if the [sessionId] is presents, it called API to '/account?session_id='
  /// to check if the [sessionId] still valid or not
  /// if the [sessionId] is valid then user directed to [HomePage], otherwise directed to [LoginPage]
  // Future<void> checkSessionStatus() async {
  //   final tokenExpireDate = await LocalStorage.getData(AuthenticationKeys.tokenExpireDate, defaultValue: '');
  //   final requestToken = await LocalStorage.getData(AuthenticationKeys.requestToken, defaultValue: '');
  //   final sessionId = await LocalStorage.getData(AuthenticationKeys.sessionId, defaultValue: '');
  //
  //   debugPrint('Splash Controller checkSessionStatus|TOKEN_EXPIRE_DATE: ==> $tokenExpireDate');
  //   debugPrint('Splash Controller checkSessionStatus|REQUEST_TOKEN: ==> $requestToken');
  //   debugPrint('Splash Controller checkSessionStatus|SESSION_ID: ==> $sessionId');
  //
  //   if(sessionId == null || sessionId.toString() == ''){
  //     Get.offAllNamed(LoginPage.routeName);
  //   }else{
  //     await _authenticationCheckUseCase.call(
  //         AccountDetailParams(
  //             sessionId: sessionId,
  //             apiKey: apiKeyAuth
  //         )
  //     ).then((response){
  //
  //       accountDetailResponseResult(DataWrapper.success(response));
  //       debugPrint('Splash Controller checkSessionStatus|SUCCESS: ==> ${accountDetailResponseEntity.success}');
  //       debugPrint('Splash Controller checkSessionStatus|STATUS_CODE: ==> ${accountDetailResponseEntity.statusCode}');
  //       debugPrint('Splash Controller checkSessionStatus|STATUS_MESSAGE: ==> ${accountDetailResponseEntity.statusMessage}');
  //
  //       if(accountDetailResponseEntity.id != null ){
  //         debugPrint('Splash Controller checkSessionStatus|ID: ==> ${accountDetailResponseEntity.id}');
  //         debugPrint('Splash Controller checkSessionStatus|NAME: ==> ${accountDetailResponseEntity.name}');
  //         debugPrint('Splash Controller checkSessionStatus|USERNAME: ==> ${accountDetailResponseEntity.username}');
  //         Get.offAllNamed(HomePage.routeName);
  //       }else{
  //         if(accountDetailResponseEntity.success == false ||
  //             accountDetailResponseEntity.statusCode == 3 ||
  //             accountDetailResponseEntity.statusMessage.toString().toLowerCase().contains("authentication failed")){
  //           Get.offAllNamed(LoginPage.routeName);
  //         }
  //       }
  //
  //     });
  //   }
  // }


}