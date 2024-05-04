import 'package:flutter/material.dart';
import 'package:marvel_app/app/constants/asset_constants.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppImages.marvelLogo),
    );
  }
}
