import 'package:get/get.dart';

import 'splash_controller.dart';
import 'splash_presenter.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(
        Get.put(
          SplashPresenter(
           
          ),
        ),
      ),
      fenix: true,
    );
  }
}
