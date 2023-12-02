import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_menu_container.dart';

class ItemCardMenu extends StatelessWidget {
  const ItemCardMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemCardMenuContainer(
              width: 33.w,
              height: 33.w,
              color: kPrimaryColor,
              icon: Icons.arrow_back_ios,
              color01: Colors.white),
              SizedBox(width: 250.w,),
          ItemCardMenuContainer(
              width: 33.w,
              height: 33.w,
              color: Colors.white,
              icon: Icons.settings,
              color01: const Color.fromARGB(255, 84, 80, 80)),
        ],
      ),
    );
  }
}
