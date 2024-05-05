import 'package:get/get.dart';
import 'package:marvel_app/app/pages/choose_avatar/choose_avatar_controller.dart';

class ChooseAvatarBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ChooseAvatarController());
  }
}
