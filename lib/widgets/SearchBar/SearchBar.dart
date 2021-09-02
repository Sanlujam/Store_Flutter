import 'package:flutter/material.dart';
import 'package:store/Widgets/SearchBar/SearchBarView.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchBarView();
  }
}
