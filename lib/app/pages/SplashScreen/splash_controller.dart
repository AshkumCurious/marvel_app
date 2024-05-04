import 'package:get/get.dart';
import 'package:marvel_app/app/navigators/navigators.dart';

class SplashController extends GetxController {
  void navigateToHome() async {
    Future.delayed(
      const Duration(seconds: 2),
      NavigateTo.goToHome,
    );
  }

  @override
  onInit() async {
    navigateToHome();
    super.onInit();
  }
}
