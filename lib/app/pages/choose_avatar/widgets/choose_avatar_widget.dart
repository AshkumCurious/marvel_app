import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/app/constants/asset_constants.dart';
import 'package:marvel_app/app/navigators/navigators.dart';
import 'package:marvel_app/app/pages/choose_avatar/choose_avatar_controller.dart';
import 'package:marvel_app/app/theme/app_paddings.dart';
import 'package:marvel_app/app/theme/app_textstyles.dart';
import 'package:marvel_app/app/widgets/app_button.dart';

class ChooseAvatar extends StatelessWidget {
  ChooseAvatar({super.key, required this.controller});
  ChooseAvatarController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.registerScreenPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.marvelLogo),
          Text(
            "Choose your Avatar",
            style: AppTextStyles.headingText,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1.0,
                mainAxisExtent: 100.h),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: Image.asset("assets/images/avatar1.png"),
              );
            },
            itemCount: 8,
          ),
          AppButton.appButton(
              buttonText: "Looks Good",
              onPressed: () {
                NavigateTo.goToHome();
              }),
        ],
      ),
    );
  }
}
