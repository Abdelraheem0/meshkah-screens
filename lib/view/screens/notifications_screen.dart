import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/controllers/home_controller.dart';
import 'package:meshkah_screens/view/widgets/notification_tile.dart';

class NotificationsScreen extends StatelessWidget {
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
            return NotificationTile(
                list: controller.notifications,
                index: index
            );
          },
          separatorBuilder: (context , index){
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.h),
              child: Divider(color: Colors.black,height: 1.h,),
            );
          },
          itemCount: controller.notifications.length,
        ),
      ),
    );
  }
}
