import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';
import 'widgets/splash_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
      builder: (controller) => const SafeArea(
            child: Scaffold(
              body: SplashWidget(),
            ),
          ));
}
