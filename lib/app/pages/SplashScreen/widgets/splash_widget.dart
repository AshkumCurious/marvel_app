import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.hotel_class_rounded,
        size: 50.0,
        color: Colors.amber[400],
      ),
    );
  }
}
