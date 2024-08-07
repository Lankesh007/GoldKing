import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/Views/Category/CategoryWidgets/category_product_widget.dart';

class CatgegoryProductBuilder extends StatelessWidget {
  const CatgegoryProductBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 310.h, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return CategoryProductWidget(
            imageUrl:
                "https://khushbujewellers.com/cdn/shop/files/201b49673b179b78cd2b62a2fde44d62_90x.jpg?v=1721728280",
            discountPercentage: "50%",
          );
        });
  }
}
