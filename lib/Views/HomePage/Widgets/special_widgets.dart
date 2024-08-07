import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:king_gold/PrimaryWidgets/add_to_cart_model_view_widget.dart';
import 'package:king_gold/Views/Category/category_details_screen.dart';

class SpecialWidget extends StatelessWidget {
  final String imageUrl;
  final String discountPercentage;

  SpecialWidget({
    required this.imageUrl,
    required this.discountPercentage,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: width / 2.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              // Image
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryDetailsScreen()));
                },
                child: ClipRRect(
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 180.0,
                    width: double.infinity,
                  ),
                ),
              ),
              // Favorite Icon
              Positioned(
                top: 8.0,
                right: 8.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.heart,
                    size: 24.0,
                  ),
                ),
              ),
              // Discount Percentage
              Positioned(
                top: 8.0,
                left: 8.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    '$discountPercentage OFF',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Add to Cart Button
          SizedBox(height: 5.h),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.lightGreen],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ElevatedButton(
              onPressed: () {
                BottomModalBarAddToCart.show(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
