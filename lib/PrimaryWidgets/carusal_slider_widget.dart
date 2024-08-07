import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliderWidget extends StatefulWidget {
  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int current = 0;
  final List<String> imgList = [
    'https://khushbujewellers.com/cdn/shop/files/Hero_27-07-2024_Krishna_1296x.png?v=1722156608&quot',
    'https://khushbujewellers.com/cdn/shop/files/CH_AA_01-07-2024_Mangalsutra_1296x.png?v=1719914057&quot',
    'https://khushbujewellers.com/cdn/shop/files/CHR_06_29-07-2024_Bracelet.png',
    'https://khushbujewellers.com/cdn/shop/files/CH_AA_01-07-2024_Rings_1296x.png',
    'https://khushbujewellers.com/cdn/shop/files/Hero_27-07-2024_Krishna_02_2.png?v=1722251401&quot',
  ];

  List<Widget> generateImageTiles() {
    return imgList
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(element, fit: BoxFit.fill, width: 1000.0.w),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CarouselSlider(
            items: generateImageTiles(),
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayCurve: Curves.linear,
              autoPlayAnimationDuration: Duration(seconds: 2),
              enlargeCenterPage: true,
              aspectRatio: 2.3,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
