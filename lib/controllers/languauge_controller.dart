//// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators, prefer_const_constructors
//
//import 'package:flutter/cupertino.dart';
//import 'package:get/get.dart';
//import 'package:meshkah_screens/translation/local_storage.dart';
//
//class LanguageController extends GetxController {
//  var appLocale = 'ar';
//
//  @override
//  void onInit() async {
//    super.onInit();
//    LocalStorage localStorage = LocalStorage();
//
//    appLocale = await localStorage.languageSelected == null
//        ? 'ar'
//        : await localStorage.languageSelected;
//
//    update();
//    Get.updateLocale(Locale(appLocale));
//  }
//
//  void changeLanguage(String currentLang) async {
//    LocalStorage localStorage = LocalStorage();
//
//    if (appLocale == currentLang) {
//      return;
//    }
//    if (currentLang == 'ar') {
//      appLocale = 'ar';
//      localStorage.saveLanguageToDisk('ar');
//    } else {
//      appLocale = 'en';
//      localStorage.saveLanguageToDisk('en');
//    }
////    Get.updateLocale(Locale(appLocale));
////    Get.reset();
//    update();
//  }
//}