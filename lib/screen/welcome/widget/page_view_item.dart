import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/item_card/models/item_card_model.dart';

class PageViewData {
  final List<String>images;
  int? selectedIndex;
  PageViewData({required this.images,required this.selectedIndex});
}

class PageViewItem extends StatefulWidget {
  final PageViewData pageViewData;
  const PageViewItem({super.key, required this.pageViewData});
  @override
  State<PageViewItem> createState() => _PageViewItemState();
}

class _PageViewItemState extends State<PageViewItem> {
  @override
  Widget build(BuildContext context) {
    final pageViewData= widget.pageViewData;
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          SizedBox(
            height: 280.h,
            child: (
              PageView(
                onPageChanged: (value){
                  setState(() {
                    pageViewData.selectedIndex= value;
                  });
                },
                children: pageViewData.images.map((e)=>SizedBox(
                  child: Image.asset(
                    e,
                  ),
                ),).toList(),
              )
            ),
          ),
           DotsIndicator(
              dotsCount: item.length,
              position: pageViewData.selectedIndex??0,
              decorator: const DotsDecorator(
                  activeColor: kPrimaryColor, color: Colors.black),
            ),
        ],
      ),
    );
  }
}