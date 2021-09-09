import 'package:flutter/material.dart';
import 'package:store/Widgets/DrawerMenu/DrawerMenuView.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return DrawerMenuView();
  }
}
