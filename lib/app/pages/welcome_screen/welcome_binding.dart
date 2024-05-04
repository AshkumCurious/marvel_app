import 'package:get/get.dart';
import 'package:marvel_app/app/pages/welcome_screen/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => WelcomeController(),
      fenix: true,
    );
  }
}
