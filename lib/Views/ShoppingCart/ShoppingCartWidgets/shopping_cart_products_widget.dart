import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCartProductsWidget extends StatefulWidget {
  const ShoppingCartProductsWidget({super.key});

  @override
  State<ShoppingCartProductsWidget> createState() =>
      _ShoppingCartProductsWidgetState();
}

class _ShoppingCartProductsWidgetState
    extends State<ShoppingCartProductsWidget> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://khushbujewellers.com/cdn/shop/files/7907a6fbcccc970f29e46b07a33e7e68.jpg?v=1721987807"))),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FeatherIcons.delete,
                            size: 30,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
                Divider(),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Product : "),
                        Text(" Silver Colorful Doli Design Anklet for Girls"),
                      ],
                    )),
                Divider(),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Price : "),
                        Text("Rs.1000.00"),
                      ],
                    )),
                Divider(),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quantity : "),
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.05,
                          width: width / 3.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
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
                    )),
                SizedBox(height: 10.h)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
