// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlatformTile extends StatelessWidget {
  final List list;
  final int index;
  PlatformTile({
    required this.list,
    required this.index,
});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 10.0,
      borderRadius: BorderRadius.circular(10.r),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: ListTile(
          onTap: (){},
          contentPadding: EdgeInsets.zero,
          title: Text('${list[index].platformName}'),
          leading: Image.asset('${list[index].platformImgPath}',),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios , size: 15.0,color: Colors.black,)),
        ),
      ),
    );
  }
}
