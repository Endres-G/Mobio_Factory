import 'package:get/get.dart';

class NavigationService {
  static Future<void> pageToNamed(String routeName,
      {dynamic arguments, bool? preventDuplicates}) async {
    Get.toNamed(
      routeName,
      arguments: arguments,
      preventDuplicates: preventDuplicates ?? true,
    );
  }

  static Future<void> pageToOffAllNamed(String routeName,
      {dynamic arguments}) async {
    await Get.offAllNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<void> pageOffAndToNamed(String routeName,
      {dynamic arguments}) async {
    await Get.offAndToNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<void> pageToOffNamed(String routeName,
      {dynamic arguments}) async {
    await Get.offNamed(
      routeName,
      arguments: arguments,
    );
  }
}
