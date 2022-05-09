// ignore_for_file: list_remove_unrelated_type, prefer_typing_uninitialized_variables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/model/notification_model.dart';
import 'package:meshkah_screens/model/platform_model.dart';
import 'package:meshkah_screens/shared/global_config.dart';

class HomeController extends GetxController {
    
    List platforms = [
        PlatformModel(
            platformName: 'منصة مشكاة التعليمية',
            platformImgPath: imageAssets + 'mesh1.png'),
        PlatformModel(
            platformName: 'منصة الدلتا التعليمية',
            platformImgPath: imageAssets + 'mesh1.png'),
        PlatformModel(
            platformName: 'منصة تجماعة التعليمية',
            platformImgPath: imageAssets + 'mesh1.png'),
        PlatformModel(
            platformName: 'منصة مصطفى الهواري التعليمية',
            platformImgPath: imageAssets + 'mesh1.png'),
    ];

    List notifications = [
        NotificationModel(
            notificationName: 'شكرا لاشتراكك',
            notificationIcon: Icons.notifications),
        NotificationModel(
            notificationName: 'تم اضافة كورسات جديدة',
            notificationIcon: Icons.circle),
        NotificationModel(
            notificationName: 'تم الاشتراك بنجاح',
            notificationIcon: Icons.check),
        NotificationModel(
            notificationName: 'برجاء اعادة تاكيد بيانات التسجيل',
            notificationIcon: Icons.warning
        ),
    ];
}