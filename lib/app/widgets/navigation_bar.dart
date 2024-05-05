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
          navBarListItem(iconPath: AppIcons.list, text: AppText.characters),
          navBarListItem(iconPath: AppIcons.home, text: AppText.home),
          navBarListItem(iconPath: AppIcons.more, text: AppText.more),
        ]);
  }

  static Widget navBarListItem(
      {required String iconPath, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            iconPath,
            height: 20.h,
            width: 20.h,
          ),
          Text(
            text,
            style: AppTextStyles.navBarText,
          ),
        ],
      ),
    );
  }
}
