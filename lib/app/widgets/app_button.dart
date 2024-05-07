import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/app/theme/app_colors.dart';
import 'package:marvel_app/app/theme/app_textstyles.dart';

class AppButton {
  static Widget appButton(
      {required String buttonText, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          textStyle: AppTextStyles.buttonText,
          backgroundColor: AppColors.primaryRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r), // border radius
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
