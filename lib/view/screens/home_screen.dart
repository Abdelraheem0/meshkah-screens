// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meshkah_screens/view/screens/platforms_screen.dart';
import 'package:meshkah_screens/view/widgets/appbar_logo.dart';
import 'package:meshkah_screens/view/widgets/search_bottom_sheet.dart';

import 'notifications_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarLogo(),
        leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                  )
    ),
        bottom: TabBar(
          onTap: (index){

          },
          indicatorWeight: 3.0,
          indicatorColor: Colors.white,
          controller: controller,
          tabs: [
            Tab(text: 'المنصات',),
            Tab(text: 'الاشعارات',),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.bottomSheet(SearchBottomSheet());
        },
        child: Icon(Icons.search),
      ),
      body: TabBarView(
        controller: controller,
          children: [
        PlatformsScreen(),
        NotificationsScreen(),
      ]),
    );
  }
}
