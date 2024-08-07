import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:king_gold/PrimaryWidgets/custom_app_bar.dart';
import 'package:king_gold/Views/Authentication/Widgets/auth_button.dart';
import 'package:king_gold/Views/Authentication/sing_in_screen.dart';

import 'Widgets/auth_widget.dart';
import 'Widgets/default_sing_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backArrow: true, title: "SIGN-UP"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            DefaultSignText(text: "First Name*"),
            AuthWidget(
              controller: firstNameController,
            ),
            SizedBox(height: 10.h),
            DefaultSignText(text: "Last Name*"),
            AuthWidget(
              controller: lastNameController,
            ),
            SizedBox(height: 10.h),
            DefaultSignText(text: "Email*"),
            AuthWidget(
              controller: emailController,
            ),
            SizedBox(height: 10.h),
            DefaultSignText(text: "Password*"),
            AuthWidget(controller: passwordController),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our privacy policy.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20.h),
            AuthButton(buttonName: 'REGISTER', buttonFunction: () {}),
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
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              child: Text(
                "Login",
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
