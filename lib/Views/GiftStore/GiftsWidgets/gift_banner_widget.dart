import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Category/category_product_screen.dart';

class GiftBannerWidget extends StatelessWidget {
  const GiftBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CategoryProductScreen()));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
          height: height * 0.2,
          width: width / 2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.shopify.com/s/files/1/0582/0058/8399/files/Red_26-06-2024_Silver_Pendent_7fb7a506-1d7d-4043-adc3-85ef9b0d0eac.png"))),
        ));
  }
}
