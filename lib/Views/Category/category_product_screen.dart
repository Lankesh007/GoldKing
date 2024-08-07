import 'package:flutter/material.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/PrimaryWidgets/filter_widget.dart';
import 'package:king_gold/PrimaryWidgets/search_widget.dart';
import 'package:king_gold/Views/HomePage/Widgets/banner_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'CategoryWidgets/category_product_builder.dart';

class CategoryProductScreen extends StatefulWidget {
  const CategoryProductScreen({super.key});

  @override
  State<CategoryProductScreen> createState() => _CategoryProductScreenState();
}

class _CategoryProductScreenState extends State<CategoryProductScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Scaffold(
      appBar: CustomAppBar(
        backArrow: true,
        title: "Catgegory Product",
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(hintText: "Search Product", onChanged: (valeue) {}),
            BannerWidget(
                image:
                    "https://khushbujewellers.com/cdn/shop/collections/Dhaga-Payal-04-03-24-2_540x.jpg?v=1719313509&quot;);"),
            FilterWidget(),
            CatgegoryProductBuilder(),
          ],
        ),
      ),
    );
  }
}
