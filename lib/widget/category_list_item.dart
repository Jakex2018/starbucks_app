import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.title,
    required this.index,
    required this.selectIndex,
  });
  final int index;
  final int selectIndex;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 120.h,
        width: 90.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.sp),
            color: index == selectIndex ? kPrimaryColor : Colors.white),
      ),
      Positioned(
          top: 10.h,
          left: 10.w,
          child: Container(
            width: 70.w,
            height: 65.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.sp)),
            child: Image.asset('asset/images/item1.png'),
          )),
      Positioned(
          bottom: 18.h,
          left: 30.w,
          child: TextWidget(
              title: title,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: index == selectIndex ? Colors.white : Colors.black))
    ]);
  }
}
