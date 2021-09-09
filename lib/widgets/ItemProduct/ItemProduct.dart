import 'package:flutter/material.dart';
import 'package:store/Widgets/ItemProduct/ItemProductView.dart';

class ItemProduct extends StatefulWidget {
  ItemProduct({Key? key}) : super(key: key);

  @override
  _ItemProductState createState() => _ItemProductState();
}

class _ItemProductState extends State<ItemProduct> {
  @override
  Widget build(BuildContext context) {
    return ItemProductView();
  }
}
