// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationTile extends StatelessWidget {
  List list;
  int index;
  NotificationTile({
    required this.list,
    required this.index,
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      leading: Icon(list[index].notificationIcon , size: 23.h,),
      title: Text('${list[index].notificationName}'),
    );
  }
}
