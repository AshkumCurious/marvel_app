import 'package:get/get.dart';
import 'package:marvel_app/app/pages/home_page/home_page_presenter.dart';

import 'home_page_controller.dart';

// import 'splash_presenter.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomePageController(
        Get.put(HomePresenter())
      ),
      fenix: true,
    );
  }
}
