import 'package:flutter/material.dart';
import 'package:marvel_app/app/pages/register_screen/register_controller.dart';
import 'package:marvel_app/app/theme/app_paddings.dart';

class RegisterWidget extends StatelessWidget {
  RegisterWidget({super.key, required this.controller});
  RegisterController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPadding.mainPadding,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
