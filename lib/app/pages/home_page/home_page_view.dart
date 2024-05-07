import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/app/widgets/navigation_bar.dart';

import 'home_page_controller.dart';
import 'widgets/home_page_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: AppBottomNavigationBar.navigationBar(),
        body: HomePageWidget(
          controller: controller,
        ),
      );
    });
  }
}
