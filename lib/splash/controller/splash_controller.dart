import 'package:aic_lll/core/routes/app_routes.dart';
import 'package:aic_lll/core/services/navigation_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    asyncInit();
    super.onInit();
  }

  Future asyncInit() async {
    print("asynnnn");
    await Future.delayed(const Duration(seconds: 3));

    NavigationService.pageToOffAllNamed(AppRoutes.welcome);
  }
}
