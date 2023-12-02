import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CarouselContainer extends StatelessWidget {
  const CarouselContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      transform: Matrix4.rotationZ(
        45 * 3.141592653589793 / 200,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.3),
          borderRadius: BorderRadius.circular(40)),
      child: SizedBox(child: Image.asset('asset/images/item1.png')),
    );
  }
}
