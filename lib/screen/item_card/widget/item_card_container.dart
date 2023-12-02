import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerCustom extends StatelessWidget {
  const ContainerCustom({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.icon,
  });
  final double width, height;
  final Color color;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child: icon,
    );
  }
}