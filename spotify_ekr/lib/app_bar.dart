import "package:flutter/material.dart";

class AppBarBuild extends StatelessWidget {
  AppBarBuild({super.key, required this.text, required this.color});

  final String text;
  final Color? color;
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      title: Text(text),
      centerTitle: true,
    );
  }
}
