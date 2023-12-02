import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_body_carousel.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_body_info.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_info.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_title_price.dart';
import 'package:starbucks_app/screen/welcome/widget/page_view_item.dart';
import 'package:starbucks_app/widget/category_list.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class ItemCardBody extends StatelessWidget {
  const ItemCardBody({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 249, 248, 248),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemCardBodyCarousel(pageViewData: PageViewData(images: [], selectedIndex: 0),),
          SizedBox(
            height: 10.h,
          ),
          const ItemCardTitleAndPrice(),
          const ItemCardInfo(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: TextWidget(
                title: 'Ingredients',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w),
            child: const CategoryList(),
          ),
          const ItemCardInf()
        ],
      ),
    );
  }
}


