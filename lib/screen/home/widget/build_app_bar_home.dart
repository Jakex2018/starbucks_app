import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 AppBar buiildAppBarHome() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 30.w),
          child: const Icon(
            Icons.notification_add,
            color: Colors.black,
          ),
        )
      ],
    );
  }