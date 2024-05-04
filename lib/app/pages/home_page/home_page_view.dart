import 'package:flutter/material.dart';
import 'package:marvel_app/app/widgets/navigation_bar.dart';

import 'widgets/home_page_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: AppBottomNavigationBar.navigationBar(),
      body: const HomePageWidget(),
    );
  }
}