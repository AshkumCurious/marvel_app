import 'package:get/get.dart';
import 'package:marvel_app/app/navigators/navigators.dart';

class SplashController extends GetxController {
  void navigateTo() async {
    Future.delayed(
      const Duration(seconds: 3),
      NavigateTo.goToWelcome,
    );
  }

  @override
  onInit() async {
    navigateTo();
    super.onInit();
  }
}
