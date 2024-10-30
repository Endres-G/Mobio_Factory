import 'package:aic_lll/core/routes/app_routes.dart';
import 'package:aic_lll/splash/splash_binding.dart';
import 'package:aic_lll/splash/view/splash_page.dart';
import 'package:aic_lll/welcome/views/welcome_page.dart';
import 'package:aic_lll/welcome/welcome_binding.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.welcome,
        page: () => const WelcomePage(),
        binding: WelcomeBinding())
  ];
}
