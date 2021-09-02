import 'package:flutter/material.dart';
import 'package:store/Widgets/NavBar/NavBarView.dart';

class NavBar extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  NavBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return NavBarView();
  }
}
