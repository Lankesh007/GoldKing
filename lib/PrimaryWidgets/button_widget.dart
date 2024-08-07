import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonName;
  final Function buttonFunction;
  const PrimaryButton(
      {required this.buttonName, required this.buttonFunction, super.key});

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.buttonColor2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(400.w, 50.h),
          backgroundColor: Colors
              .transparent, // This makes the button's background transparent
          shadowColor: Colors.transparent, // This removes the default shadow
        ),
        onPressed: () {
          buttonFunction();
        },
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String buttonName;
  final Function buttonFunction;
  const SecondaryButton(
      {required this.buttonName, required this.buttonFunction, super.key});

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, AppColors.buttonColor2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(400.w, 50.h),
          backgroundColor: Colors
              .transparent, // This makes the button's background transparent
          shadowColor: Colors.transparent, // This removes the default shadow
        ),
        onPressed: () {
          buttonFunction();
        },
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
