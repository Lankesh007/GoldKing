import 'package:flutter/material.dart';

import '../../PrimaryWidgets/custom_app_bar.dart';
import '../../PrimaryWidgets/filter_widget.dart';
import '../../PrimaryWidgets/search_widget.dart';
import '../Authentication/sing_in_screen.dart';
import '../Category/CategoryWidgets/category_product_builder.dart';
import '../HomePage/Widgets/banner_widget.dart';
import '../ShoppingCart/shopping_cart_screen.dart';

class BestSellerScreen extends StatefulWidget {
  const BestSellerScreen({super.key});

  @override
  State<BestSellerScreen> createState() => _BestSellerScreenState();
}

class _BestSellerScreenState extends State<BestSellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backArrow: false,
        title: "Best Seller",
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
            SearchWidget(hintText: "Search Product", onChanged: (valeue) {}),
            BannerWidget(
                image:
                    "https://khushbujewellers.com/cdn/shop/files/CH_AA_25-06-2024_Shop_By_Category_900x.png?v=1719680584&quot"),
            FilterWidget(),
            CatgegoryProductBuilder(),
          ],
        ),
      ),
    );
  }
}
