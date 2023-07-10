import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData leadingIcon;
  final Color leadingIconColor;
  final Color backgroundColor;
  final String title;
  final TextStyle titleStyle;

  const CustomAppBar({super.key, 
    required this.leadingIcon,
    required this.leadingIconColor,
    required this.backgroundColor,
    required this.title,
    required this.titleStyle,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        leadingIcon,
        color: leadingIconColor,
      ),
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: titleStyle,
      ),
    );
  }
}

