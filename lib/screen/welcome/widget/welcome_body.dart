import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starbucks_app/constant.dart';
import 'package:starbucks_app/screen/home/home.dart';
import 'package:starbucks_app/screen/welcome/models/images_model.dart';
import 'package:starbucks_app/screen/welcome/widget/welcome_description.dart';
import 'package:starbucks_app/widget/button_one.dart';
import 'package:starbucks_app/widget/text_widget.dart';
class WelcomeBody extends StatefulWidget {
  const WelcomeBody({
    super.key,
  });
  @override
  State<WelcomeBody> createState() => _WelcomeBodyState();
}

class _WelcomeBodyState extends State<WelcomeBody> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
      child: Column(
        children: [
          SizedBox(
              height: 320.h,
              width: 400.w,
              child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      selectIndex = value;
                    });
                  },
                  children: images
                      .map((e) => Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ))
                      .toList())),
          DotsIndicator(
            dotsCount: images.length,
            position: selectIndex,
          ),
          SizedBox(
            height: 20.h,
          ),
          const WelcomeDescription(),
          SizedBox(
            height: 30.h,
          ),
          const ButtonOne(),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
            },
            child: TextWidget(
                title: 'Skip',
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black26),
          )
        ],
      ),
    );
  }
}