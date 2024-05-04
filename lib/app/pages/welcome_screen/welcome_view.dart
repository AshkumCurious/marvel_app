import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/app/pages/welcome_screen/welcome_controller.dart';
import 'package:marvel_app/app/theme/app_colors.dart';

import 'widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(builder: (controller) {
      return  SafeArea(child: Scaffold(
        backgroundColor: AppColors.primaryBlack,
        body: WelcomeWidget(controller: controller),
      ));
    });
  }
}
