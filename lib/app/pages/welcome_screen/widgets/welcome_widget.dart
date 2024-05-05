import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/app/pages/welcome_screen/welcome_controller.dart';
import 'package:marvel_app/app/theme/app_colors.dart';
import 'package:marvel_app/app/theme/app_textstyles.dart';
import 'package:marvel_app/app/widgets/app_button.dart';

import '../../../navigators/navigators.dart';

// ignore: must_be_immutable
class WelcomeWidget extends StatelessWidget {
  WelcomeWidget({super.key, required this.controller});
  WelcomeController controller;

  List<Widget> slides = items
      .map((item) => Column(
            children: <Widget>[
              Image.asset(
                item['image'],
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    item['description'],
                    style: AppTextStyles.welcomePageText,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
      (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 3.w),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: controller.currentPage.value.round() == index
                    ? AppColors.primaryRed
                    : AppColors.primaryWhite,
                borderRadius: BorderRadius.circular(10.0)),
          ));

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView.builder(
          controller: controller.pageViewController,
          itemCount: slides.length,
          itemBuilder: (BuildContext context, int index) {
            return slides[index];
          },
        ),
        (controller.currentPage.toString() != "5.0")
            ? Container(
                // margin: EdgeInsets.only(top: 70.h),
                padding: EdgeInsets.only(top: 15.h, bottom: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicator(),
                ),
              )
            : Padding(
                padding: EdgeInsets.only(
                  bottom: 60.h,
                ),
                child: AppButton.appButton(
                    buttonText: "Continue",
                    onPressed: () {
                      NavigateTo.goToChooseAvatar();
                    }),
              ),
      ],
    );
  }
}
