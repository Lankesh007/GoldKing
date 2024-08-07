import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'special_widgets.dart';

class GridViewHomePageWidget extends StatelessWidget {
  final List dataList;
  final String? image;
  const GridViewHomePageWidget({required this.dataList, this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 260.h, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return SpecialWidget(
              imageUrl: image.toString(), discountPercentage: "50%");
        });
  }
}
