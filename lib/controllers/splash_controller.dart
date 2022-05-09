import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/shared/get_navigate_functions.dart';
import 'package:meshkah_screens/view/screens/home_screen.dart';

class SplashController extends GetxController {

  @override
  void onInit() async {
    super.onInit();
    splashTimer(const HomeScreen());
  }

  Future<void> splashTimer(Widget screen) async {
    await Future.delayed(
        const Duration(seconds: 3) ,
            () => getOffAllScreen(screen));
  }

}