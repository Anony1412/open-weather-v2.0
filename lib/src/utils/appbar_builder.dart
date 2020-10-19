import 'package:flutter/material.dart';

class AppBarBuilder {
  static buildAppBar({String title, Color backgroundColor}) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: backgroundColor,
      centerTitle: true,
    );
  }
}
