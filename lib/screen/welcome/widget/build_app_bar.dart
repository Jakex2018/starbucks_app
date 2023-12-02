import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
AppBar buildAppBar() {
    return AppBar(
        elevation: 0,backgroundColor: Colors.transparent,toolbarHeight: 100.h,
        title: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Container(
            width: 60.w,height: 60.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Image.asset('asset/images/logo2.png')),
        ),
          centerTitle: true,
      );
  }