import 'package:get/get.dart';
import '../../navigators/navigators.dart';
import 'splash_presenter.dart';

class SplashController extends GetxController {
  SplashController(this._splashPresenter);
  final SplashPresenter _splashPresenter;

  void navigateToHome() async {
    Future.delayed(
      const Duration(seconds: 2),
      // NavigateTo.goToHome,
    );
  }

  @override
  onInit() async {
    navigateToHome();
    super.onInit();
  }
}
