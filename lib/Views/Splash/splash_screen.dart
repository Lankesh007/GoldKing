import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:king_gold/Views/Authentication/sing_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    moveToOnBoard();
    super.initState();
  }

  Future moveToOnBoard() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 3), () {
      if (preferences.getString('userId') != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInScreen()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadedScaleAnimation(
          fadeDuration: Duration(seconds: 3),
          // child: Image.asset(
          //   " AppImages.appLogo",
          //   height: 300.h,
          //   width: 350.w,
          // ),

          child: Text(
            "Company Logo",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
