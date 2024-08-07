import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/button_widget.dart';
import 'package:king_gold/PrimaryWidgets/title_text.dart';
import 'package:king_gold/Views/ShoppingCart/shopping_cart_screen.dart';

import '../Views/HomePage/Widgets/gridview_widget.dart';

class BottomModalBarAddToCart {
  static void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(),
        builder: (context) {
          return _BottomModalBarContent();
        });
  }
}

class _BottomModalBarContent extends StatefulWidget {
  @override
  __BottomModalBarContentState createState() => __BottomModalBarContentState();
}

class __BottomModalBarContentState extends State<_BottomModalBarContent> {
  String orderDetails = 'Order details go here.';
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return SingleChildScrollView(
      child: Container(
        height: height * 2,
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Text(
              'Your Order',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              alignment: Alignment.centerLeft,
              height: height * 0.1,
              width: width * 0.97,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://khushbujewellers.com/cdn/shop/files/517ccd03e3b7358aa88b07c0a537a39d.jpg?v=1721648482'),
                          fit: BoxFit.fill,
                        )),
                    height: 75.h,
                    width: 120.w,
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          width: width / 3,
                          child: Text(
                            "Titleasdaddasdasdasdasda",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          )),
                      Container(
                          width: width / 3,
                          child: Text(
                            "Price: \$1000",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    height: height * 0.05,
                    width: width / 4,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (_quantity > 1) {
                              setState(() {
                                _quantity--;
                              });
                            }
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          '$_quantity',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _quantity++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Text("Sub Total : \$1000",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            SizedBox(height: 20.h),
            PrimaryButton(
                buttonName: "CONTINUE SHOPPING",
                buttonFunction: () {
                  Navigator.pop(context);
                }),
            SizedBox(height: 10.h),
            SecondaryButton(
                buttonName: "PROCEED TO CHECKOUT",
                buttonFunction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingCartScreen()));
                }),
            SizedBox(height: 20.h),
            DefaultTitileText(text: "Products You May Like"),
            SizedBox(height: 20.h),
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
