import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/app_colors.dart';

class AuthButton extends StatelessWidget {
  final String buttonName;
  final Function buttonFunction;
  const AuthButton(
      {required this.buttonName, required this.buttonFunction, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return ElevatedButton(
      onPressed: () {
        buttonFunction();
      },
      child: Text(
        buttonName,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          shape: ContinuousRectangleBorder(),
          textStyle: TextStyle(color: Colors.white),
          backgroundColor: AppColors.primaryColor,
          fixedSize: Size(410.w, 50.h)),
    );
  }
}
