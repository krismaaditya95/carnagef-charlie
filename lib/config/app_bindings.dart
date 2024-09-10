
import 'package:carnagef_charlie/config/env.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

/// Main Binding Class for GetX dependency injections
/// I put all the crucial / important and necessary data sources, repositories, and usecases here
class AppBindings extends Bindings{
  @override
  Future<void> dependencies() async {
    Get.put<Dio>(dio(), permanent: true);
  }

  Dio dio(){
    // final isLogAllowed = AppEnvironment.environment == Environment.dev;

    final dioInstance = Dio(
        BaseOptions(
            baseUrl: AppEnvironment.baseApiUrl,
            connectTimeout: const Duration(minutes: 1)
        )
    );

    dioInstance.interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        requestBody: true,
        error: true
    ));

    return dioInstance;
  }
}