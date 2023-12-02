import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCardMenuContainer extends StatelessWidget {
  const ItemCardMenuContainer({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.icon,
    required this.color01,
  });
  final double width, height;
  final Color color, color01;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 8.w),
        child: Icon(icon, color: color01)),
    );
  }
}
