import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:king_gold/Utils/app_colors.dart';

class ToastComponent {
  static void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primaryColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
