import 'package:flutter/material.dart';
import 'package:store/Widgets/SearchBar/SearchBar.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.add_alert),
        tooltip: 'Show Snackbar',
        onPressed: () {},
      ),
      actions: [SearchBar()],
    );
  }
}
