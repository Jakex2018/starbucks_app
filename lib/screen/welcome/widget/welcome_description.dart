import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';

class WelcomeDescription extends StatelessWidget {
  const WelcomeDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'Quick ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: 'Delivery ',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'at\nYour Doorstep',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold))
                  ])
            ]));
  }
}

