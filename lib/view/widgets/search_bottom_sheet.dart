// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/controllers/home_controller.dart';
import 'package:meshkah_screens/shared/size.dart';
import 'package:meshkah_screens/view/widgets/platform_tile.dart';

class SearchBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.transparent,
          ),
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(bottomSheetRadius) ,
              topRight: Radius.circular(bottomSheetRadius)),
        ),
        child: Padding(
          padding:  EdgeInsets.all(15.h),
          child: Column(
            children: [
              TextFormField(
                onTap: (){},
                decoration: InputDecoration(
                  hintText: 'ابحث عن ما تريد',
                  suffixIcon: Icon(Icons.search , color: Colors.black,),
                ),
              ),
              SizedBox(height: 20.h,),
              SingleChildScrollView(
                child: SizedBox(
                  height: 240.h,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                      itemBuilder: (context , index) => PlatformTile(list: controller.platforms, index: index),
                      separatorBuilder: (context , index) => SizedBox(height: 15.h,),
                      itemCount: controller.platforms.length,
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('اشتراك'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
