import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultTitileText extends StatelessWidget {
  final String text;
  const DefaultTitileText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Divider(color: Colors.black),
        ),
        SizedBox(width: 10.w),
        Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: SizedBox(
            child: Divider(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
