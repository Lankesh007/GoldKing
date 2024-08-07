import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/PrimaryWidgets/search_widget.dart';
import 'package:king_gold/Views/HomePage/Widgets/banner_widget.dart';

import '../Category/CategoryWidgets/category_product_builder.dart';
import 'GiftsWidgets/gift_banner_widget.dart';

class GiftStoreScreen extends StatefulWidget {
  const GiftStoreScreen({super.key});

  @override
  State<GiftStoreScreen> createState() => _GiftStoreScreenState();
}

class _GiftStoreScreenState extends State<GiftStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: false, title: 'Gift Store'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(hintText: 'Search Your Gift', onChanged: (value) {}),
            BannerWidget(
                image:
                    "https://cdn.shopify.com/s/files/1/0582/0058/8399/files/CH_AA_26-06-2024_Gift_Store.png?v=1719680612"),
            GridView.builder(
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 190.h, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GiftBannerWidget();
                }),
            Divider(),
            Divider(),
            CatgegoryProductBuilder(),
          ],
        ),
      ),
    );
  }
}
