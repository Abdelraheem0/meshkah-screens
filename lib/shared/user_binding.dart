import 'package:get/get.dart';
import 'package:meshkah_screens/controllers/home_controller.dart';
import 'package:meshkah_screens/controllers/languauge_controller.dart';
import 'package:meshkah_screens/controllers/splash_controller.dart';

class UserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(HomeController());
//    Get.put(LanguageController());
  }
}