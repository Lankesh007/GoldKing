import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/Views/HomePage/Widgets/shop_by_category_widget.dart';

class ShopByCategoryBuilder extends StatelessWidget {
  const ShopByCategoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 240.h, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return ShopByCategoryWidget(
            imageUrl:
                "https://khushbujewellers.com/cdn/shop/files/13-06-2024_Payal_4_89576f96-bfc3-4253-80f7-563c26965a73_2048x.jpg?v=1718785240%202048w",
            title: "Silver Payal",
          );
        });
  }
}
