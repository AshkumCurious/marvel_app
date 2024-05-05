import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:marvel_app/app/constants/asset_constants.dart';
import 'package:marvel_app/app/constants/text_constants.dart';
import 'package:marvel_app/app/theme/app_colors.dart';

import 'package:marvel_app/app/theme/app_textstyles.dart';

class AppBottomNavigationBar {
  static Widget navigationBar() {
    return CurvedNavigationBar(
        height: 50.h,
        onTap: (value) {},
        buttonBackgroundColor: AppColors.primaryRed,
        index: 1,
        color: AppColors.primaryBlack,
        backgroundColor: AppColors.primaryWhite,
        items: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppIcons.list),
                const Text(
                  AppText.characters,
                  style: AppTextStyles.navBarText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppIcons.home),
                const Text(
                  AppText.home,
                  style: AppTextStyles.navBarText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppIcons.more),
                const Text(
                  AppText.more,
                  style: AppTextStyles.navBarText,
                ),
              ],
            ),
          )
        ]);
  }
}
