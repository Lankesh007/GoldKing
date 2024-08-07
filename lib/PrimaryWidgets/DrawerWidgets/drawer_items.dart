import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/app_colors.dart';

class DrawerItem extends StatelessWidget {
  final Icon icon;
  final String name;
  final Function onTap;
  const DrawerItem(
      {required this.icon, required this.name, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Divider(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                children: [
                  icon == ""
                      ? Icon(
                          Icons.home,
                          color: AppColors.primaryColor,
                        )
                      : icon,
                  SizedBox(
                    width: 19,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        letterSpacing: 0.1),
                  ),
                ],
              )),
          Divider(),
        ],
      ),
    );
  }
}
