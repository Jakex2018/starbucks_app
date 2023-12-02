import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_order_button.dart';
import 'package:starbucks_app/screen/item_card/widget/item_number_container.dart';

class ItemCardInf extends StatelessWidget {
  const ItemCardInf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 10.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ItemNumberContainer(),
          ItemCardOrderButton()
        ],
      ),
    );
  }
}


