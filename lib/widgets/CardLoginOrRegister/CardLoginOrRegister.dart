import 'package:flutter/material.dart';
import 'package:store/Widgets/CardLoginOrRegister/CardLoginOrRegisterView.dart';

class CardLoginOrRegister extends StatefulWidget {
  CardLoginOrRegister({Key? key}) : super(key: key);

  @override
  _CardLoginOrRegisterState createState() => _CardLoginOrRegisterState();
}

class _CardLoginOrRegisterState extends State<CardLoginOrRegister> {
  @override
  Widget build(BuildContext context) {
    return CardLoginOrRegisterView();
  }
}
