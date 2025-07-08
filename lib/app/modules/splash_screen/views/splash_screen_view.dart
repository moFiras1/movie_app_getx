import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:movies/app/routes/app_pages.dart';
import 'package:movies/core/app_images/app_images.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds:3),() {
      Get.offNamed(Routes.NAVE_SCREEN);
    },);
    return Scaffold(
        body: Center(
      child: Image.asset(
        AppImages.splashLogo,
        width: 168.w,
        height: 187.h,
      ),
    ));
  }
}
