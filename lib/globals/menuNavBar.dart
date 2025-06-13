import 'package:flutter/material.dart';

class MenuNavBar extends StatefulWidget {
  const MenuNavBar({super.key});

  @override
  State<MenuNavBar> createState() => _MenuNavBarState();
}

class _MenuNavBarState extends State<MenuNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(width: 185, height: 300, color: Colors.black);
  }
}
