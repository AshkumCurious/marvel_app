import 'package:get/get.dart';
import 'package:marvel_app/app/pages/register_screen/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RegisterController());
  }
}
