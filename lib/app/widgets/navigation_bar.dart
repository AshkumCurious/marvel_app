import 'package:flutter/material.dart';
import 'package:marvel_app/app/constants/asset_constants.dart';
import 'package:marvel_app/app/constants/text_constants.dart';
import 'package:marvel_app/app/theme/app_colors.dart';
import 'package:marvel_app/app/theme/app_textstyles.dart';

class AppBottomNavigationBar {
  static Widget navigationBar() {
    return NavigationBar(
      backgroundColor: AppColors.primaryBlack,
      destinations: [
        Column(
          children: [
            Image.asset(AppIcons.list),
            const Text(
              AppText.characters,
              style: AppTextStyles.white_14_500w,
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(AppIcons.home),
            const Text(AppText.home, style: AppTextStyles.white_14_500w,),
          ],
        ),
        Column(
          children: [
            Image.asset(AppIcons.more),
            const Text(AppText.more, style: AppTextStyles.white_14_500w,),
          ],
        )
      ],
    );
  }
}
