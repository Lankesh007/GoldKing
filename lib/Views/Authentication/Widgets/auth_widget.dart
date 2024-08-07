// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthWidget extends StatelessWidget {
  TextInputType? textInputType;
  IconData? prefixIcon;
  TextEditingController controller;
  String? hintText;
  AuthWidget(
      {this.prefixIcon,
      this.textInputType,
      required this.controller,
      this.hintText,
      super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Container(
      height: height * 0.055,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 2)),
      child: Row(
        children: [
          prefixIcon == null ? SizedBox() : SizedBox(width: 5),
          prefixIcon == null ? SizedBox() : Icon(prefixIcon),
          prefixIcon == null ? SizedBox() : VerticalDivider(color: Colors.grey),
          Container(
            width: width / 1.2,
            child: TextField(
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              keyboardType: textInputType,
              decoration: InputDecoration(
                  hintText: hintText == null ? "" : "   $hintText",
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectCountryWidget extends StatefulWidget {
  final String hintText;
  const SelectCountryWidget({required this.hintText, super.key});

  @override
  State<SelectCountryWidget> createState() => _SelectCountryWidgetState();
}

class _SelectCountryWidgetState extends State<SelectCountryWidget> {
  String? selectedCountry;
  List<String> countries = [
    'United States',
    'Canada',
    'Mexico',
    'United Kingdom',
    'Germany',
    'France',
    'India',
    'China',
    'Japan',
    'Australia'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        hint: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(widget.hintText)),
        value: selectedCountry,
        onChanged: (newValue) {
          setState(() {
            selectedCountry = newValue;
          });
        },
        items: countries.map((country) {
          return DropdownMenuItem(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(country)),
            value: country,
          );
        }).toList(),
      ),
    );
  }
}
