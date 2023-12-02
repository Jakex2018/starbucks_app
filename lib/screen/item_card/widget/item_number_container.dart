import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_container.dart';
import 'package:starbucks_app/widget/text_widget.dart';

class ItemNumberContainer extends StatelessWidget {
  const ItemNumberContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child: const ItemNumbeContainerElements(),
    );
  }
}

class ItemNumbeContainerElements extends StatefulWidget {
  const ItemNumbeContainerElements({
    super.key,
  });

  @override
  State<ItemNumbeContainerElements> createState() =>
      _ItemNumbeContainerElementsState();
}

class _ItemNumbeContainerElementsState
    extends State<ItemNumbeContainerElements> {
  int index = 0;
  int seletIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      GestureDetector(
        onTap: (){
          setState(() {
            seletIndex=index;
            index= index-1;
          });
        },
        child: const ContainerCustom(
          width: 30,
          height: 30,
          color: Colors.black,
          icon: Icon(
            Icons.remove,
            color: Colors.white,
          ),
        ),
      ),
      TextWidget(
          title: index.toString(),
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black),
      GestureDetector(
        onTap: () {
          setState(() {
            // ignore: unused_label
            seletIndex = index;
            index = index + 1;
          });
        },
        child: const ContainerCustom(
          width: 30,
          height: 30,
          color: kPrimaryColor,
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
