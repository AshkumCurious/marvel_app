import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:marvel_app/app/constants/asset_constants.dart';
import 'package:marvel_app/app/constants/app_text_constants.dart';
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
    return Container(
      padding: const EdgeInsets.all(2.0),
      height: 60.h,
      width: 60.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            iconPath,
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: AppTextStyles.navBarText,
          ),
        ],
      ),
    );
  }
}
