import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/Views/Splash/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/app_colors.dart';
import '../flutter_toast.dart';
import 'drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return SingleChildScrollView(
      child: Container(
        height: height * 0.9,
        width: width / 1.5,
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: DrawerItem(
                  icon: Icon(
                    FeatherIcons.logOut,
                    color: Colors.white,
                  ),
                  name: "Log-Out",
                  onTap: () {
                    logOutUser(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void logOutUser(context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    if (preferences.getString('userId') == null) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
        (route) => false,
      );
      ToastComponent.showToast('Log-out Successfully!!');
    }
  }
}
