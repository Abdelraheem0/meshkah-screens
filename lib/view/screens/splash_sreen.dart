// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/controllers/languauge_controller.dart';
import 'package:meshkah_screens/controllers/splash_controller.dart';
import 'package:meshkah_screens/shared/global_config.dart';
import 'package:meshkah_screens/shared/theme.dart';
import 'package:meshkah_screens/translation/translations.dart';



class SplashScreen extends StatelessWidget {

   SplashScreen({Key? key}) : super(key: key);
//   HomeController homeController = Get.put(HomeController());
//   LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      translations: Translation(),
      //ToDO  read lang from get storage
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: MyTheme().getTheme(),
      home: Scaffold(
          body: GetBuilder<SplashController>(
            init: SplashController(),
            builder: (splashController) => Center(
              child: SizedBox(
                width: 150.w,
                height: 150.h,
                child: Image.asset(
                  imageAssets + 'logo.png',
                  fit: BoxFit.contain,
                  color: Colors.teal,
                ),
              ),
            ),
          )
      ),
    );
  }
}
