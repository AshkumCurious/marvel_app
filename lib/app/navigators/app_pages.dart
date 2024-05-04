
import 'package:get/get.dart';
import 'package:marvel_app/app/pages/welcome_screen/welcome_binding.dart';
import 'package:marvel_app/app/pages/welcome_screen/welcome_view.dart';

import '../pages/SplashScreen/splash_binding.dart';
import '../pages/SplashScreen/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static var fadeTransitionDuration = const Duration(milliseconds: 350);
  static var cupertinoTransitionDuration = const Duration(milliseconds: 400);

  static const initial = Routes.splash;

  static final pages = [
    GetPage<SplashScreen>(
        name: Routes.splash,
        page: SplashScreen.new,
        transition: Transition.fadeIn,
        binding: SplashBinding(),
        transitionDuration: fadeTransitionDuration),

    GetPage<WelcomePage>(
        name: Routes.welcome,
        page: WelcomePage.new,
        transition: Transition.fadeIn,
        binding: WelcomeBinding(),
        transitionDuration: fadeTransitionDuration),
  
  ];
}
