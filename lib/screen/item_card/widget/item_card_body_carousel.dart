import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/screen/item_card/models/item_card_model.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_menu.dart';
import 'package:starbucks_app/screen/welcome/widget/page_view_item.dart';

class ItemCardBodyCarousel extends StatefulWidget {
  const ItemCardBodyCarousel({
    super.key, required this.pageViewData,
  });
  final PageViewData pageViewData;
  @override
  State<ItemCardBodyCarousel> createState() => _ItemCardBodyCarouselState();
}

class _ItemCardBodyCarouselState extends State<ItemCardBodyCarousel> {
  @override
  Widget build(BuildContext context) {
    final pageViewData= widget.pageViewData;
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .45,
          child: Image.asset(
            'asset/images/bg01.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(top: 20.h, left: 0.w, child: const ItemCardMenu()),
        Column(
          children: [
            PageViewItem(
              pageViewData: PageViewData(
                images: item,
                selectedIndex: pageViewData.selectedIndex,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
