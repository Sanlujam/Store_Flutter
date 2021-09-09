import 'package:flutter/material.dart';
import 'package:store/widgets/DrawerMenu/DrawerMenu.dart';
import 'package:store/widgets/NavBar/NavBar.dart';

class ResultSearchProductView extends StatelessWidget {
  ResultSearchProductView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: NavBar(),
      ),
      drawer: DrawerMenu(),
      body: Container(
        child: null,
      ),
    );
  }
}
