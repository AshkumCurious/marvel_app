import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/app/pages/choose_avatar/choose_avatar_controller.dart';

import '../../theme/app_colors.dart';
import 'widgets/choose_avatar_widget.dart';

class ChooseAvatarPage extends StatelessWidget {
  const ChooseAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChooseAvatarController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryBlack,
          body: ChooseAvatar(
            controller: controller,
          ),
        ),
      );
    });
  }
}
