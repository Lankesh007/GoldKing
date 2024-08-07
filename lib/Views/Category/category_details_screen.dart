import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';

import '../../PrimaryWidgets/title_text.dart';
import '../HomePage/Widgets/category_widgets.dart';
import '../HomePage/Widgets/gridview_widget.dart';
import 'CategoryWidgets/product_details_widget.dart';
import 'category_product_screen.dart';

class CategoryDetailsScreen extends StatefulWidget {
  const CategoryDetailsScreen({super.key});

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Scaffold(
      appBar: CustomAppBar(
        backArrow: true,
        title: "Product Details",
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_checkout))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsWidget(
              images: [
                'https://khushbujewellers.com/cdn/shop/files/517ccd03e3b7358aa88b07c0a537a39d.jpg?v=1721648482',
                'https://khushbujewellers.com/cdn/shop/files/a5215478e97e766763eb6e8cad0f5851.jpg?v=1721648482',
                'https://khushbujewellers.com/cdn/shop/files/e260e117ea0e5b55643db069f9512c41.jpg?v=1721648482'
              ],
              title: 'Special Rakhi',
              price: '\$50.00',
              stockStatus: 'In Stock',
              description:
                  'This is a detailed description of the product. It contains all the information about the product features and benefits.',
            ),
            DefaultTitileText(text: "Shop By Category"),
            SizedBox(
              height: 10.h,
            ),
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
            SizedBox(
              height: 10.h,
            ),
            DefaultTitileText(text: "You May Also Like"),
            GridViewHomePageWidget(
              dataList: [],
              image:
                  "https://khushbujewellers.com/cdn/shop/files/07c706abdd09ef956881655ac85bd19d.jpg?v=1716891689",
            ),
          ],
        ),
      ),
    );
  }
}
