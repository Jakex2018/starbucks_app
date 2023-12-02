import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/screen/home/models/category_model.dart';
import 'package:starbucks_app/widget/category_list_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      height: 120.h,
      child: (ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 10.w,
        ),
        itemCount: category.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectIndex = index;
              });
            },
            child: CategoryListItem(
              title: category[index],
              index: index,
              selectIndex: selectIndex,
            )),
        shrinkWrap: true,
      )),
    ));
  }
}
