import 'package:flutter/material.dart';
import 'package:marvel_app/app/constants/asset_constants.dart';

import '../theme/app_colors.dart';

/// Ui for No Internet widget
class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({Key? key}) : super(key: key);
  static const noInternetWidgetKey = Key('no-internet-widget-key');
  @override
  Widget build(BuildContext context) => Scaffold(
        key: noInternetWidgetKey,
        backgroundColor: AppColors.primaryWhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.marvelLogo,
              scale: 5,
            ),
            
            const Text(
              'Ooops!',
             
            ),
            const Text(
              'No internet connection found\n Check your connection',
              textAlign: TextAlign.center,
             
            ),
          ],
        ),
      );
}
