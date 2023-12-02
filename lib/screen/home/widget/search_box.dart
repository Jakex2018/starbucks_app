import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
class HomeSearchIcon extends StatelessWidget {
  const HomeSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 250.w,
            height: 45.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2.w),
                borderRadius: BorderRadius.circular(20.sp)),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black12,
                ),
                hintText: 'Search your course...',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: kPrimaryColor,borderRadius: BorderRadius.circular(10.sp)
            ),
            child: const Icon(Icons.manage_search_outlined,color: Colors.white,),
          )
        ],
      ),
    );
  }
}