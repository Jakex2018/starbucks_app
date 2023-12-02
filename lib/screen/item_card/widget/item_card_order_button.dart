import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class ItemCardOrderButton extends StatelessWidget {
  const ItemCardOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.h,
      height: 50.h,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20.sp)),
      child: Center(
        child: TextWidget(
            title: 'Order Now',
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
