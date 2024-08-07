import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/carusal_slider_widget.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/PrimaryWidgets/search_widget.dart';
import 'package:king_gold/PrimaryWidgets/title_text.dart';
import 'package:king_gold/Views/Category/category_product_screen.dart';
import 'package:king_gold/Views/HomePage/Widgets/banner_widget.dart';
import 'package:king_gold/Views/HomePage/Widgets/category_widgets.dart';
import 'package:king_gold/Views/HomePage/Widgets/gridview_widget.dart';
import 'package:king_gold/Views/HomePage/Widgets/shop_by_price_builder.dart';
import 'package:king_gold/Views/Profile/profile_screen.dart';
import 'package:king_gold/Views/ShoppingCart/shopping_cart_screen.dart';
import 'Widgets/shop_by_category_builder.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Scaffold(
      appBar: CustomAppBar(
        backArrow: false,
        title: 'GOLD KING',
        showDrawer: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShoppingCartScreen()));
              },
              icon: Icon(Icons.shopping_bag)),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SearchWidget(hintText: "Search Product", onChanged: (value) {}),
            CarouselSliderWidget(),
            SizedBox(height: 20.h),
            SizedBox(
              height: height * 0.15,
              width: width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CategoryProductScreen()));
                        },
                        child: CategegoryWidgets());
                  }),
            ),
            Divider(),
            SizedBox(height: 10.h),
            SizedBox(
                height: height * 0.15,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryProductScreen()));
                          },
                          child: CategegoryWidgets());
                    })),
            SizedBox(height: 20.h),
            Divider(),
            BannerWidget(
                image:
                    "https://media.istockphoto.com/id/1263072746/vector/raksha-bandhan-festival-background-with-decorated-indian-rakhi.jpg?s=612x612&w=0&k=20&c=hxOWOjmvxZDt_TNgbhYE4ByYrJJdeXzgjmqc3Jql5u4="),
            DefaultTitileText(text: "Special Collection Rakhi"),
            GridViewHomePageWidget(
              dataList: [],
              image:
                  "https://khushbujewellers.com/cdn/shop/files/592f01c3935668f4ae62902e5ab3807e.jpg?v=1719724313",
            ),
            BannerWidget(
              image:
                  "https://khushbujewellers.com/cdn/shop/files/Hero_27-07-2024_Krishna_02_2.png?v=1722251401&quot",
            ),
            DefaultTitileText(text: " Janmashtami Collection "),
            GridViewHomePageWidget(
              dataList: [],
              image:
                  "https://khushbujewellers.com/cdn/shop/files/7907a6fbcccc970f29e46b07a33e7e68.jpg?v=1721987807",
            ),
            DefaultTitileText(text: "Shop by Price"),
            SizedBox(height: 10.h),
            ShopByPriceBuilder(dataList: []),
            BannerWidget(
                image:
                    "https://khushbujewellers.com/cdn/shop/files/CH_AA_01-07-2024_Rings_1296x.png"),
            DefaultTitileText(text: "Products You May Like"),
            GridViewHomePageWidget(
              dataList: [],
              image:
                  "https://khushbujewellers.com/cdn/shop/files/07c706abdd09ef956881655ac85bd19d.jpg?v=1716891689",
            ),
            BannerWidget(
                image:
                    "https://khushbujewellers.com/cdn/shop/files/CHR_06_29-07-2024_Bracelet.png"),
            DefaultTitileText(text: "Premium Bracelet"),
            GridViewHomePageWidget(
              dataList: [],
              image:
                  "https://khushbujewellers.com/cdn/shop/files/614831f5266867d91323171f1292bf6e.jpg?v=1716882835",
            ),
            DefaultTitileText(text: "Shop By Category"),
            ShopByCategoryBuilder(),
            BannerWidget(
                image:
                    "https://khushbujewellers.com/cdn/shop/files/CH_AA_01-07-2024_Mangalsutra_1296x.png?v=1719914057&quot"),
            DefaultTitileText(text: "Mangalsutra Collection"),
            GridViewHomePageWidget(
              dataList: [],
              image:
                  "https://khushbujewellers.com/cdn/shop/files/31c8f0c4f35d9faa933607c661f450a2.jpg?v=1716879460%203360w%203360h",
            )
          ],
        ),
      ),
    );
  }
}
