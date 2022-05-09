// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meshkah_screens/shared/user_binding.dart';
import 'package:meshkah_screens/view/screens/splash_sreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  UserBinding().dependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]).then((value) =>  runApp(
      ScreenUtilInit(
          builder: () => SplashScreen()
      )
  ));

}

