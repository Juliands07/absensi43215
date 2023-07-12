import 'package:absensi43215/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo_splash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
