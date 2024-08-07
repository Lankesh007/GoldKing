import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/PrimaryWidgets/search_widget.dart';
import 'package:king_gold/PrimaryWidgets/title_text.dart';
import 'package:king_gold/Views/Authentication/sing_in_screen.dart';
import 'package:king_gold/Views/HomePage/Widgets/banner_widget.dart';
import 'package:king_gold/Views/ShoppingCart/shopping_cart_screen.dart';

import '../HomePage/Widgets/shop_by_category_builder.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backArrow: false,
        title: "Category",
        showDrawer: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              icon: Icon(
                Icons.person,
                size: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShoppingCartScreen()));
              },
              icon: Icon(
                Icons.shopping_bag,
                size: 25,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(hintText: "Search by Category", onChanged: (value) {}),
            BannerWidget(
                image:
                    "https://khushbujewellers.com/cdn/shop/files/CH_AA_25-06-2024_Shop_By_Category_900x.png?v=1719680584&quot"),
            SizedBox(height: 20.h),
            DefaultTitileText(text: "Categories"),
            ShopByCategoryBuilder(),
          ],
        ),
      ),
    );
  }
}
