import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/button_widget.dart';
import 'package:king_gold/PrimaryWidgets/title_text.dart';
import 'package:king_gold/Utils/app_colors.dart';
import 'package:king_gold/Views/Category/CategoryWidgets/category_product_widget.dart';

import '../../../PrimaryWidgets/add_to_cart_model_view_widget.dart';
import '../../../PrimaryWidgets/offer_box_widget.dart';

class ProductDetailsWidget extends StatefulWidget {
  final List<String> images;
  final String title;
  final String price;
  final String stockStatus;
  final String description;

  ProductDetailsWidget({
    required this.images,
    required this.title,
    required this.price,
    required this.stockStatus,
    required this.description,
  });

  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  int _selectedImageIndex = 0;
  int _quantity = 1;
  bool _isFavorite = false;
  bool _isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main Image
        Center(
          child: Image.network(
            widget.images[_selectedImageIndex],
            height: 300,
            width: width,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 16.0),
        // Small Images
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images
              .asMap()
              .entries
              .map(
                (entry) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedImageIndex = entry.key;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _selectedImageIndex == entry.key
                            ? Colors.blue
                            : Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                    child: Image.network(
                      entry.value,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              // Title
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              // Price and Stock Status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichTextWidget(
                    discountedPrice: "Rs. 2000.00",
                    originalPrice: 'Rs.1000.00',
                  ),
                  Text(
                    widget.stockStatus,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: widget.stockStatus == 'In Stock'
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Description
              Text(
                _isDescriptionExpanded
                    ? widget.description
                    : widget.description.substring(0, 50) + '...',
              ),
            ],
          ),
        ),

        TextButton(
          onPressed: () {
            setState(() {
              _isDescriptionExpanded = !_isDescriptionExpanded;
            });
          },
          child: Text(
            _isDescriptionExpanded ? 'Read Less' : 'Read More',
            style: TextStyle(
                color: AppColors.primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16.0),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: height * 0.05,
                width: width / 3.5,
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
              SizedBox(width: 20.w),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                height: height * 0.05,
                width: width / 7,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _isFavorite ? Colors.red : Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40.0.h),

        DefaultTitileText(text: "SPECIAL OFFERS"),

        SizedBox(height: 20.0.h),

        SizedBox(
          height: height * 0.14,
          width: width,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return OfferBoxWidget(
                  subtitle: "",
                  title: "",
                );
              }),
        ),
        SizedBox(height: 10.0.h),

        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Coupon can be applied at checkout*",
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: AppColors.primaryColor),
            )),

        SizedBox(height: 40.0.h),
        Container(
          alignment: Alignment.center,
          child: PrimaryButton(buttonFunction: () {}, buttonName: "Buy It Now"),
        ),
        SizedBox(height: 16.0),
        Container(
          alignment: Alignment.center,
          child: PrimaryButton(
              buttonFunction: () {
                print("object");
                BottomModalBarAddToCart.show(context);
              },
              buttonName: "Add To Cart"),
        ),
        SizedBox(height: 40.0.h),
      ],
    );
  }
}
