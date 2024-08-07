// src/custom_app_bar.dart

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final bool backArrow;
  final bool? showDrawer;

  const CustomAppBar(
      {super.key,
      required this.backArrow,
      required this.title,
      this.showDrawer,
      this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      leading: Builder(builder: (BuildContext context) {
        return backArrow == true
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios))
            : showDrawer == true
                ? IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  )
                : SizedBox();
      }),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
