import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/app/pages/welcome_screen/welcome_controller.dart';
import 'package:marvel_app/app/theme/app_colors.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  item['description'],
                  style: TextStyle(
                      color: AppColors.primaryWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp),
                  textAlign: TextAlign.center,
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
      children: <Widget>[
        PageView.builder(
          controller: controller.pageViewController,
          itemCount: slides.length,
          itemBuilder: (BuildContext context, int index) {
            return slides[index];
          },
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 70.h),
              padding: EdgeInsets.symmetric(vertical: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicator(),
              ),
            )
            //  ),
            )
        // )
      ],
    );
  }
}
