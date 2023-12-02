import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/widget/text_widget.dart';
class ItemCardTitleAndPrice extends StatelessWidget {
  const ItemCardTitleAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  title: 'Double Chocolate',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              TextWidget(
                  title: 'Chip Frapucchino',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ],
          ),
          Container(
            width: 70.w,height: 50.h,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10.sp)
            ),
            child:Center(
              child: TextWidget(
                    title: '\$345',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
