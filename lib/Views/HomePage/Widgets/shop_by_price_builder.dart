import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/Views/Category/category_product_screen.dart';

import 'shop_by_price_widget.dart';

class ShopByPriceBuilder extends StatelessWidget {
  final List dataList;
  const ShopByPriceBuilder({required this.dataList, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 165.h, crossAxisCount: 2, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryProductScreen()));
              },
              child: ShopByPriceWidget(
                  title: "Gfits\nUnder\n₹999",
                  ribbonImage:
                      "https://i.pinimg.com/originals/17/7f/2e/177f2e505a2c3b1375e087d28da05f91.png"),
            );
          }),
    );
  }
}
