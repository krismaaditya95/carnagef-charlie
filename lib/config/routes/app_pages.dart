import 'package:carnagef_charlie/main/presentation/home/getx/home_binding.dart';
import 'package:carnagef_charlie/main/presentation/home/pages/home_page.dart';
import 'package:carnagef_charlie/main/presentation/login/getx/login_binding.dart';
import 'package:carnagef_charlie/main/presentation/login/pages/login_page.dart';
import 'package:carnagef_charlie/main/presentation/splash_screen/getx/splash_binding.dart';
import 'package:carnagef_charlie/main/presentation/splash_screen/pages/splash_screen_page.dart';
import 'package:get/get.dart';

const initialPageRoute = SplashScreenPage.routeName;

final GetPage splashScreenPage = GetPage(
    name: SplashScreenPage.routeName,
    page: () => const SplashScreenPage(),
    binding: SplashBinding()
);

/// list of Pages with its route name and bindings
final pageRoutes = [
  splashScreenPage,

  GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
      binding: LoginBinding()
  ),
  GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
      binding: HomeBinding()
  ),
];