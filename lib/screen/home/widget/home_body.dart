import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/home/widget/home_card_content.dart';
import 'package:starbucks_app/screen/home/widget/home_item_card.dart';
import 'package:starbucks_app/screen/home/widget/home_item_features.dart';
import 'package:starbucks_app/screen/home/widget/home_title_icon.dart';
import 'package:starbucks_app/screen/home/widget/search_box.dart';
import 'package:starbucks_app/widget/category_list.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: aDefaultPadding.w, vertical: aDefaultPadding/2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(title: 'Order Delicious Meal!', fontSize: 25.sp, fontWeight: FontWeight.bold, color: Colors.black,),
          const HomeSearchIcon(),
          const HomeTitleIcon(),
          SizedBox(height: 10.h,),
          const CategoryList(),
          HomeCardContent(widget:  const HomeItemCard(image: 'asset/images/item1.png'), height: 230.h,),
          const HomeTitleIcon(),
          SizedBox(height: 10.h,),
          HomeCardContent(widget:  const HomeItemFeatures(image: 'asset/images/item1.png'), height: 100.h,),
        ],
      ),
    );
  }
}