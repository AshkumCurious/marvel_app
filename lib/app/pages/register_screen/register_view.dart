import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/app/pages/register_screen/register_controller.dart';
import 'package:marvel_app/app/pages/register_screen/widgets/register_widget.dart';
import 'package:marvel_app/app/theme/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(builder: (controller) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: AppColors.primaryBlack,
        body: RegisterWidget(controller: controller),
      ));
    });
  }
}
