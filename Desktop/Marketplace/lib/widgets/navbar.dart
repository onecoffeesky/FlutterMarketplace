import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon iconLeft;
  final Icon iconRight;
  final Function() onPressed;
  final Function() onPressed2;
  final Function() onNotificationsPressed;

 const CustomAppBar({super.key, 
    required this.title,
    required this.onNotificationsPressed,
    required this.iconLeft,
    required this.onPressed,
    required this.onPressed2,
    required this.iconRight
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: iconLeft,
            onPressed: onPressed,
          ),
          Text(title, style: TextStyle(fontSize: 34, color: Colors.black, fontFamily: "Impact", fontStyle: FontStyle.italic , fontWeight: FontWeight.bold)),
          IconButton(
            icon: iconRight,
            onPressed: onPressed2
          ),
        ],
      ),
    );
  }

   @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}