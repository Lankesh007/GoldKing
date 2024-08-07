import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategegoryWidgets extends StatelessWidget {
  const CategegoryWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: height * 0.055,
            backgroundImage: NetworkImage(
              "https://khushbujewellers.com/cdn/shop/files/6d0e4712b5f7c6c61eb9f88a2cc27829_180x.jpg?v=1716960535",
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            "Title",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
