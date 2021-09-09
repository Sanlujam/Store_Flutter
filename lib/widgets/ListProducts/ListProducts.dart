import 'package:flutter/material.dart';
import 'package:store/Widgets/ListProducts/ListProductsView.dart';

class ListProducts extends StatefulWidget {
  ListProducts({Key? key}) : super(key: key);

  @override
  _ListProductsState createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    return ListProductsView();
  }
}
