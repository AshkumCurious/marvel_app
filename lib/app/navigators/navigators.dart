import 'package:get/get.dart';
import 'package:marvel_app/app/navigators/app_pages.dart';

///These function are used to navigate pages.
abstract class NavigateTo {
  ///This function will navigate to walkThrough Screen.
  static void goToWelcome() {
    Get.offAllNamed(Routes.welcome);
  }

  // /This function will navigate to walkThrough Screen.
  static void goToHome() {
    Get.offAllNamed(Routes.home);
  }
}
