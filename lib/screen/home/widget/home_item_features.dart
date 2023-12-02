import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class HomeItemFeatures extends StatelessWidget {
  const HomeItemFeatures({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 120.h,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.sp)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                title: "Coffee\nLatte",
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              TextWidget(
                  title: '\$500',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor)
            ],
          )
        ],
      ),
    );
  }
}