import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/Utils/app_colors.dart';

class CartTotalWidget extends StatelessWidget {
  const CartTotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cart Total : ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.primaryColor),
            ),
            Text(
              "Rs.3000.00",
              style: TextStyle(color: Colors.green.shade900),
            ),
          ],
        ),
      ),
    );
  }
}
