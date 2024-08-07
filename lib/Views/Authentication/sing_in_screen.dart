import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/Views/Authentication/Widgets/auth_button.dart';
import 'package:king_gold/Views/Authentication/Widgets/auth_widget.dart';
import 'package:king_gold/Views/Authentication/register_screen.dart';
import 'package:king_gold/Views/BottomNavigationBar/tab_bar_screen.dart';
import 'Widgets/default_sing_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: false, title: 'SIGN-IN'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            DefaultSignText(text: "Email*"),
            AuthWidget(
                controller: emailController,
                prefixIcon: Icons.person_2_outlined),
            SizedBox(height: 20.h),
            DefaultSignText(text: "Password*"),
            AuthWidget(
              controller: passwordController,
              prefixIcon: Icons.password,
            ),
            SizedBox(height: 30.h),
            AuthButton(
                buttonName: 'SIGN-IN',
                buttonFunction: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => BottomBarView()),
                    (route) => false,
                  );
                }),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot your password",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            Divider(indent: 3),
            SizedBox(height: 10.h),
            Icon(Icons.person_4_outlined, size: 80.h, color: Colors.grey[400]),
            Text(
              "No Account Yet ?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Registering for this App allows you to access your order status and history. Just fill in the fields below, and we’ll get a new account set up for you in no time. We will only ask you for information necessary to make the purchase process faster and easier.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10.h),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Text(
                "Create An Account",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
