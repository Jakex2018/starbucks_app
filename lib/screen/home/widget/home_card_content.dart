import 'package:flutter/material.dart';
class HomeCardContent extends StatelessWidget {
  const HomeCardContent({
    super.key, required this.widget, required this.height,
  });
  final Widget widget;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            for (int i = 0; i < 3; i++)
             widget
          ],
        ),
      ),
    );
  }
}
