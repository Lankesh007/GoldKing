import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferBoxWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const OfferBoxWidget(
      {required this.title, required this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: width / 2.5,
      padding: EdgeInsets.all(8.0), // Padding inside the container
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromARGB(255, 65, 64, 66),
            width: 0.66), // Border color and width
        borderRadius:
            BorderRadius.circular(4.0), // Optional: to round the corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WITHLOVE',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold, // Bold to mimic <h4> styling
            ),
          ),
          SizedBox(height: 4.0), // Space between heading and paragraph
          Text(
            '₹499 off Minimum purchase of ₹4,999',
            style: TextStyle(
              fontSize: 13.0,
              height: 1.3, // Line height
            ),
          ),
        ],
      ),
    );
  }
}
