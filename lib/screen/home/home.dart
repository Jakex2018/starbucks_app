import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/screen/home/widget/build_app_bar_home.dart';
import 'package:starbucks_app/screen/home/widget/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 248, 248),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: buiildAppBarHome(),
          ),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: HomeBody()));
  }
}