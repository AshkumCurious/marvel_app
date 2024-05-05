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
    "description":
        "Marvel Comics was founded by Martin Goodman in 1939 under the name Timely Publications. It later became known as Marvel Comics in the 1960s.",
    "image": AppImages.welcome2,
  },
  {
    "description": "Marvel Comics has a complex multiverse, with different alternate realities and dimensions.",
    "image": AppImages.welcome3,
  },
  {
    "description": "The Avengers, initially consisting of Iron Man, Thor, Hulk, Ant-Man, and the Wasp, first appeared as a team in The Avengers #1 in 1963.",
    "image": AppImages.welcome4,
  },
  {
    "description": "Marvel Comics has made strides in promoting diversity and representation in its characters",
    "image": AppImages.welcome5,
  },
  {
    "description": "Let's get started!!!",
    "image": AppImages.welcome6,
  }
];
