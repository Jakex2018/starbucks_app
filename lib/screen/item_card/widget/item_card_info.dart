import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class ItemCardInfo extends StatelessWidget {
  const ItemCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ItemCardIconAndInfo(
            icon: Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            title: '4.6 Reviews',
          ),SizedBox(width: 10.w),
          const ItemCardIconAndInfo(
            icon: Icon(
              Icons.cookie,
              color: Colors.orange,
            ),
            title: '480 Calories',
          ),SizedBox(width: 10.w,),
          const ItemCardIconAndInfo(
            icon: Icon(
              Icons.temple_hindu_outlined,
              color: Colors.orange,
            ),
            title: '20 Roundes',
          )
        ],
      ),
    );
  }
}

class ItemCardIconAndInfo extends StatelessWidget {
  const ItemCardIconAndInfo({
    super.key,
    required this.icon,
    required this.title,
  });
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        TextWidget(
            title: title,
            fontSize: 9.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ],
    );
  }
}
