import 'package:get/get.dart';

import 'home_page_controller.dart';

// import 'splash_presenter.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomePageController(
        
      ),
      fenix: true,
    );
  }
}
