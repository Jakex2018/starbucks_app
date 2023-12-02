import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/home/home.dart';
import 'package:starbucks_app/widget/text_widget.dart';
class ButtonOne extends StatelessWidget {
  const ButtonOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ));
      },
      child: Container(
        width: 300.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: TextWidget(
                title: 'Get Started',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}
