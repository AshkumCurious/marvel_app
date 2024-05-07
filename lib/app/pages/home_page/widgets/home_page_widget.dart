import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/app/pages/home_page/home_page_controller.dart';
import 'package:marvel_app/app/theme/app_textstyles.dart';
import 'package:marvel_app/app/widgets/app_button.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // HomePageController controller = Get.find();
    return GetBuilder<HomePageController>(builder: (controller) {
      return Column(
        children: [
          Container(
            child: AppButton.appButton(
                buttonText: "api call test -- character listing",
                onPressed: () {
                  controller.getCharacterListing();
                }),
          ),
          Container(
            child: AppButton.appButton(
                buttonText: "api call test -- character details",
                onPressed: () {
                  controller.getCharacterDetails(characterId: 1017100);
                }),
          ),
          Container(
            child: Image.network(
                "${controller.imagePath}.${controller.extension}"),
          ),
         
        ],
      );
    });
  }
}
