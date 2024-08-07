import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/button_widget.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/PrimaryWidgets/search_widget.dart';
import 'package:king_gold/PrimaryWidgets/title_text.dart';
import 'package:king_gold/Utils/app_colors.dart';
import 'package:king_gold/Views/Authentication/Widgets/auth_button.dart';
import 'package:king_gold/Views/ShoppingCart/ShoppingCartWidgets/cart_total_widget.dart';
import 'package:king_gold/Views/ShoppingCart/ShoppingCartWidgets/shopping_cart_products_widget.dart';
import '../Authentication/Widgets/auth_widget.dart';
import '../Authentication/Widgets/default_sing_text.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  var postCodeController = TextEditingController();
  var couponCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, title: "Shopping Cart"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(
                hintText: "Search In your cart", onChanged: (value) {}),
            ShoppingCartProductsWidget(),
            SizedBox(height: 20.h),
            AuthButton(buttonName: "Clear Cart", buttonFunction: () {}),
            SizedBox(height: 20.h),
            DefaultTitileText(text: " Get Shipping Estimates"),
            SizedBox(height: 20.h),
            DefaultSignText(text: "Country"),
            SelectCountryWidget(
              hintText: "Select a Country",
            ),
            SizedBox(height: 10.h),
            DefaultSignText(text: "Province"),
            SelectCountryWidget(hintText: "Select a State"),
            SizedBox(height: 10.h),
            DefaultSignText(text: "Zip/Postal Code"),
            SizedBox(height: 5.h),
            AuthWidget(
                controller: postCodeController,
                textInputType: TextInputType.number,
                hintText: "Postal Code"),
            SizedBox(height: 20.h),
            AuthButton(buttonName: "Calculate Shipping", buttonFunction: () {}),
            SizedBox(height: 20.h),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  "There are 2 shipping rates available for 262405, Uttarakhand, India,\nStarting at Rs. 70.00.\nStandard at Rs. 70.00"),
            ),
            SizedBox(height: 20.h),
            DefaultTitileText(text: "Cart Total"),
            SizedBox(height: 20.h),
            CartTotalWidget(),
            SizedBox(height: 20.h),
            DefaultSignText(text: "Coupon Code"),
            SizedBox(height: 5.h),
            AuthWidget(
                controller: couponCodeController, hintText: "Coupon Code"),
            SizedBox(height: 20.h),
            AuthButton(buttonName: "Apply Coupon", buttonFunction: () {}),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "* The final price with your coupon code will apply in Checkout page",
                style: TextStyle(
                    color: AppColors.primaryColor, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.h),
            PrimaryButton(
                buttonName: "Proceed to Checkout", buttonFunction: () {}),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
