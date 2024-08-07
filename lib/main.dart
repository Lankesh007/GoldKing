import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:king_gold/Providers/home_page_provider.dart';
import 'package:provider/provider.dart';

import 'Views/Splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'Lora', brightness: Brightness.light),
          builder: FToastBuilder(),
          debugShowCheckedModeBanner: false,
          title: 'Gold King',
          home: SplashScreen(),
        ),
      ),
    );
  }
}
