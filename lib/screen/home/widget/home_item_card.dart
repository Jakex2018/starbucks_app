import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/item_card/item_card.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemCard(),));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              width: 200.w,
              height: 250.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.sp)),
            ),
            Positioned(
              top: 10.h,
              left: 20.w,
              child: Text(
                'Double Chocolate',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 35.h,
              left: 20.w,
              child: Text(
                'Breakfast food',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                bottom: 60.h,
                left: 40.w,
                child: Image.asset(
                  image,
                  height: 140.h,
                )),
            Positioned(
                bottom: 20,
                left: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Row(children: [
                          Icon(Icons.cookie_rounded,size: 18.sp,),
                          const Text('Favorite',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor
                          ),)
                        ],), Text('\$300',style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 16.sp
                        ),)],
                      ),SizedBox(width: 70.w,),
                      Container(
                          width: 30.w,
                          height: 30.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,borderRadius: BorderRadius.circular(3.sp)
                          ),
                          child: const Icon(Icons.favorite,color: Colors.white,))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}