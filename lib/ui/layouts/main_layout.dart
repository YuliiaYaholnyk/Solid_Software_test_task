import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final Color bgColor;

  MainLayout({
    this.child,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: child,
    );
  }
}
