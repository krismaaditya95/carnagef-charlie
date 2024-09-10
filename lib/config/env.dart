import 'package:carnagef_charlie/core/constants/constants.dart';

enum Environment { dev, sit, uat, prod}

/// class for configure flavor / environment
/// such ass base API endpoints, title, etc.
abstract class AppEnvironment {

  static late Environment _environment;
  static late String baseApiUrl;
  static late String title;

  static Environment get environment => _environment;

  static setupEnv(Environment env){
    _environment = env;
    switch (env){
      case Environment.dev:
        {
          baseApiUrl = '';
          title = 'Krisma Aditya To-Do List App DEV';
          break;
        }
      case Environment.sit:
        {
          baseApiUrl = '';
          title = 'Krisma Aditya To-Do List App SIT';
          break;
        }
      case Environment.uat:
        {
          baseApiUrl = '';
          title = 'Krisma Aditya To-Do List App UAT';
          break;
        }
      case Environment.prod:
        {
          baseApiUrl = '';
          title = 'Krisma Aditya To-Do List App PROD';
          break;
        }
    }
  }
}