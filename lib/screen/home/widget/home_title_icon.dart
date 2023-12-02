import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitleIcon extends StatelessWidget {
  const HomeTitleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Explore Categories',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),SizedBox(width: 80.w,),
        Text(
          'See all',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black12,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}