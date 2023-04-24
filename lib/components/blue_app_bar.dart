import 'package:flutter/material.dart';

class BlueAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF3a57ff),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_circle_left_rounded,
          size: 30.0,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
