// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/controllers/home_controller.dart';
import 'package:meshkah_screens/view/widgets/platform_tile.dart';

class PlatformsScreen extends StatelessWidget {
  const PlatformsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(18.h),
        child: ListView.separated(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context , index){
            return PlatformTile(list: controller.platforms, index: index);
          },
          separatorBuilder: (context , index){
            return SizedBox(height: 20.h,);
          },
          itemCount: controller.platforms.length,
        ),
      ),
    );
  }
}
