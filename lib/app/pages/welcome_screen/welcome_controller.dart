import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/app/constants/asset_constants.dart';

class WelcomeController extends GetxController {
  RxDouble currentPage = 0.0.obs;
  PageController pageViewController = PageController();

  @override
  void onInit() {
    pageViewController.addListener(() {
      currentPage.value = pageViewController.page!;
      update();
    });
    super.onInit();
  }
}

List items = [
  {
    "description": "Hello Marvel Fans!!! Welcome to the world of Marvel",
    "image": AppImages.welcome1,
  },
  {
    "description": "Hello Marvel Fans!!! Welcome to the world of Marvel",
    "image": AppImages.welcome2,
  },
  {
    "description": "Hello Marvel Fans!!! Welcome to the world of Marvel",
    "image": AppImages.welcome3,
  },
  {
    "description": "Hello Marvel Fans!!! Welcome to the world of Marvel",
    "image": AppImages.welcome4,
  },
  {
    "description": "Hello Marvel Fans!!! Welcome to the world of Marvel",
    "image": AppImages.welcome5,
  },
  {
    "description": "Hello Marvel Fans!!! Welcome to the world of Marvel",
    "image": AppImages.welcome6,
  }
];
